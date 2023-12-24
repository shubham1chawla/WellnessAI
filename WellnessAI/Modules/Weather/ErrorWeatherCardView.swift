//
//  ErrorWeatherCardView.swift
//  WellnessAI
//
//  Created by Shubham Chawla on 12/22/23.
//

import SwiftUI

struct ErrorWeatherCardView: View {
    var errorMessage: String?
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.icloud")
                .font(.title)
                .padding(EdgeInsets(
                    top: 24, leading: 16, bottom: 4, trailing: 16
                ))
            VStack {
                Text("Something went wrong!")
                    .font(.headline)
                Text(errorMessage ?? "Unable to present weather information")
                    .font(.caption)
            }
            .padding(EdgeInsets(
                top: 4, leading: 16, bottom: 24, trailing: 16
            ))
        }
        .frame(maxWidth: .infinity)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ErrorWeatherCardView()
}
