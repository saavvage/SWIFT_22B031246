
//
//  HeroListView.swift
//  HeroApp
//
//  Created by Artemiy on 25.03.2025.
//

import SwiftUI

struct HeroListView: View {
    @StateObject var viewModel: HeroListViewModel

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(viewModel.heroes) { model in
                        NavigationLink(destination: HeroDetailView(model: model)) {
                            heroCard(model: model)
                                .padding(.horizontal)
                        }
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Heroes")
            .background(Color(.systemBackground))
        }
        .task {
            await viewModel.fetchHeroes()
        }
    }
}

extension HeroListView {
    @ViewBuilder
    private func heroCard(model: HeroListModel) -> some View {
        HStack(alignment: .center, spacing: 16) {
            AsyncImage(url: model.heroImage) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                default:
                    ProgressView()
                        .frame(width: 80, height: 80)
                }
            }

            VStack(alignment: .leading, spacing: 6) {
                Text(model.title)
                    .font(.headline)
                    .foregroundColor(.primary)

                Text(model.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }

            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.secondarySystemBackground))
                .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
        )
    }
}
