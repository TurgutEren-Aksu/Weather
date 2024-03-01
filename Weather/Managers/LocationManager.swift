//
//  LocationManager.swift
//  Weather
//
//  Created by Turgut Eren Aksu on 1.03.2024.
//

import Foundation
import CoreLocation

class CoreLocation: NSObject,ObservableObject,CLLocationManagerDelegate{
	let manager = CLLocationManager()
	
	@Published var location: CLLocationCoordinate2D?
	@Published var isLoading = false
	override init() {
		super.init()
		manager.delegate = self
	}
	func requestLocation(){
		isLoading = true
		manager.requestLocation()
	}
}
