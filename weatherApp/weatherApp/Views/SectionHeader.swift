//
//  SectionHeader.swift
//  weatherApp
//
//  Created by Artemiy on 11.04.2025.
//

import SwiftUI

struct WeatherSectionHeader: View {
    let title: String
    let isLoading: Bool
    let hasError: Bool

    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
            Spacer()
            if isLoading {
                ProgressView()
            } else if hasError {
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.red)
            }
        }
        .padding(.horizontal)
    }
}
