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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
	WeatherView(weather: previewWeather)
}
