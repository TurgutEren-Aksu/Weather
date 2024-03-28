//
//  WeatherView.swift
//  Weather
//
//  Created by Turgut Eren Aksu on 26.03.2024.
//

import SwiftUI

struct WeatherView: View {
	var weather: ResponseBody
	var body: some View {
		ZStack(alignment: .leading){
			VStack{
				VStack(alignment: .leading, spacing: 5){
					Text(weather.name)
						.bold().font(.title)
					Text("Bugün \(Date().formatted(.dateTime.month().day().hour().minute()))").fontWeight(.light)
					
				}.frame(maxWidth: .infinity, alignment: .leading )
				Spacer()
				
			}.padding()
				.frame(maxWidth: .infinity, alignment: .leading)
			
		}.edgesIgnoringSafeArea(.bottom)
			.background(Color(hue: 1.0, saturation: 0.500, brightness: 0.300))
			.preferredColorScheme(.dark)
	}
}

#Preview {
	WeatherView(weather: previewWeather)
}
