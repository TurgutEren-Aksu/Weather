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
           WelcomeView()
				.environmentObject(locationManager)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
