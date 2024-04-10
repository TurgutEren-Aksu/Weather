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
				VStack{
					
					HStack{
						
						VStack(spacing:20){
							Image(systemName: "sun.max")
								.font(.system(size: 40))
							Text(weather.weather[0].main)
							
						}.frame(width: 150,alignment: .leading)
						
						Spacer()
						
						Text(weather.main.feels_like.roundDouble() + "°")
							.font(.system(size: 100))
							.fontWeight(.bold)
							.padding()
					}
					Spacer()
						.frame(height: 80)
					
					AsyncImage(url: URL(string: "https://images.hdqwalls.com/download/red-glowing-weather-4k-qj-2160x3840.jpg")){ image in
					image
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 350)
					} placeholder: {
						ProgressView()
					}
					Spacer()
					
				}.frame(maxWidth: .infinity)
				
			}.padding()
				.frame(maxWidth: .infinity, alignment: .leading)
			
			VStack{
				Spacer()
				
				VStack(alignment:.leading,spacing: 20){
					Text("Weather Now")
						.bold()
						.padding(.bottom)
						
					HStack{
						WeatherRow(logo: "thermometer", name: "Min Temp", value:(weather.main.tempMin.roundDouble()) + "°")
						Spacer()
						WeatherRow(logo: "thermometer", name: "Max Temp", value:(weather.main.tempMin.roundDouble()) + "°")
					}
					HStack{
						WeatherRow(logo: "wind", name: "Wind speed", value:(weather.main.tempMin.roundDouble()) + "m/s")
					}
					
				}.frame(maxWidth: .infinity,alignment: .leading)
					.padding()
					.padding(.bottom, 20)
					.foregroundColor(Color(hue: 1.0, saturation: 0.500, brightness: 0.300))
					.background(.white)
					.cornerRadius(20, corners: [.topLeft,.topRight])
			}
			
		}.edgesIgnoringSafeArea(.bottom)
			.background(Color(hue: 1.0, saturation: 0.500, brightness: 0.300))
			.preferredColorScheme(.dark)
	}
}

#Preview {
	WeatherView(weather: previewWeather)
}
