//
//  ContentView.swift
//  Weather
//
//  Created by Turgut Eren Aksu on 1.03.2024.
//

import SwiftUI

struct ContentView: View {
	
	@StateObject var locationManager = CoreLocation()
	var weatherManager = WeatherManager()
	@State var weather: ResponseBody?
	
	var body: some View {
		VStack {
			if let location = locationManager.location{
				if let weather = weather{
					
					WeatherView(weather: weather)
					
				}else{
					LoadingView()
						.task{
							do{
								weather = try await weatherManager
									.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
							}catch{
								print("Error geting weather \(error)")
							}
						}
				}
			}else{
				if locationManager.isLoading{
					LoadingView()
				}else{
					WelcomeView()
						.environmentObject(locationManager)
				}
			}
		}
		.padding()
		.background(Color(hue: 1.0, saturation: 0.500, brightness: 0.300))
		.preferredColorScheme(.dark)
	}
}

#Preview {
	ContentView()
}
