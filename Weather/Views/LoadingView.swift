//
//  LoadingView.swift
//  Weather
//
//  Created by Turgut Eren Aksu on 11.03.2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
			.progressViewStyle(CircularProgressViewStyle(tint:.white))
			.frame(maxWidth:.infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
