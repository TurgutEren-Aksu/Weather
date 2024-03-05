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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WelcomeView()
}
