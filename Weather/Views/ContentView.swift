//
//  ContentView.swift
//  Weather
//
//  Created by Turgut Eren Aksu on 1.03.2024.
//

import SwiftUI

struct ContentView: View {
	
	@StateObject var locationManager = CoreLocation()
	
    var body: some View {
        VStack {
			if let location = locationManager.location{
				Text("Şu an buradasınız: \(location.latitude), \(location.longitude)")
			}
           WelcomeView()
				.environmentObject(locationManager)
        }
		.padding()
		.background(Color(hue: 1.0, saturation: 0.500, brightness: 0.300))
		.preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
