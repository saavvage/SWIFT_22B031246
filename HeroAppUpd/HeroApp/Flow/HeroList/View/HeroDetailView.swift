//
//  HeroDetailView.swift
//  HeroApp
//
//  Created by Artemiy on 17.04.2025.
//

import SwiftUI

struct HeroDetailView: View {
    let model: HeroListModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                if let imageURL = model.heroImage {
                    AsyncImage(url: imageURL) { phase in
                        switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(16)
                                .shadow(radius: 8)
                        default:
                            ProgressView()
                        }
                    }
                }

                Text(model.title)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.primary)

                Text(model.description)
                    .font(.body)
                    .foregroundColor(.secondary)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Hero Info")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemBackground))
    }
}
