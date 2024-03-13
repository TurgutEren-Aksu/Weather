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
	}
}
