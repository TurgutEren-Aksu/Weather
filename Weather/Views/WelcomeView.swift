//
//  WelcomeView.swift
//  Weather
//
//  Created by Turgut Eren Aksu on 5.03.2024.
//

import SwiftUI

struct WelcomeView: View {
	@EnvironmentObject var locationManager:CoreLocation
    var body: some View {
		VStack{
			VStack{
				Text("Welcome to the weather app")
				Text("testtesttest")
			}
			.multilineTextAlignment(.center)
			.padding()
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
