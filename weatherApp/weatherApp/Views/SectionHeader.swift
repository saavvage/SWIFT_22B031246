//
//  SectionHeader.swift
//  weatherApp
//
//  Created by Artemiy on 11.04.2025.
//

import SwiftUI

struct WeatherSectionHeader: View {
    let title: String
    let state: WeatherViewModel.LoadingState

    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
            Spacer()
            
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.red)
            
        }
        .padding(.horizontal)
    }
}
