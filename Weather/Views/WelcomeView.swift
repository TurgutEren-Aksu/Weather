//
//  WelcomeView.swift
//  Weather
//
//  Created by Turgut Eren Aksu on 5.03.2024.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
	@EnvironmentObject var locationManager:CoreLocation
    var body: some View {
		VStack{
			VStack{
				Text("Hava Durumu Uygulamasına Hoş Geldiniz")
					.bold().font(.title)
				Text("Bölgenizdeki hava durumunu öğrenmek için lütfen konumunuzu paylaşın")
					.padding()
			}
			.multilineTextAlignment(.center)
			.padding()
			
			LocationButton(.shareCurrentLocation){
				locationManager.requestLocation()
			}
			.cornerRadius(60)
			.symbolVariant(.fill)
			.foregroundColor(.white)
			
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
