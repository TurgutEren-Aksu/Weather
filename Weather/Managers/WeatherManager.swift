//
//  WeatherManager.swift
//  Weather
//
//  Created by Turgut Eren Aksu on 12.03.2024.
//

import Foundation
import CoreLocation

class WeatherManager {
	func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
		guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=8443f3d3e74e2afc4ccbce5d8fcb6397")
		else {
			fatalError("Yanlış URL")
		}
		let urlRequest = URLRequest(url: url)
		let (data,response) = try await URLSession.shared.data(for: urlRequest)
		guard (response as? HTTPURLResponse)?.statusCode == 200
		else{
			fatalError("Yanlış URL")
		}
	}
}
struct ResponseBody {
	
	var coord: CoordinatesResponse
	
	struct CoordinatesResponse {
		var lon: Double
		var lat: Double
	}
	
	struct WeatherResponse {
		var id:Double
		var main:String
		var description:String
		var icon:String
		
	}
	struct MainResponse {
		var temp: Double
		var feels_like: Double
		var temp_min: Double
		var temp_max: Double
		var pressure: Double
		var humidity: Double
		var sea_level: Double
		var grnd_level: Double
	}
	struct WindResponse {
		var speed: Double
		var deg: Double
	}
	
}
