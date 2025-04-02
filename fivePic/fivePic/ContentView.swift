//
//  ContentView.swift
//  fivePic
//
//  Created by Artemiy on 03.04.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ImagesViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 10) {
                    ForEach(viewModel.images) { model in
                        NavigationLink(destination: DetailView(image: model.image)) {
                            model.image
                                .resizable()
                                .scaledToFill()
                                .frame(height: 150)
                                .clipped()
                        }
                    }
                }
                .padding()
            }
            .refreshable {
                viewModel.refreshImages()
            }
            .onAppear {
                viewModel.loadMoreImages()
            }
            .navigationTitle("Image Gallery")
            .toolbar {
                Button("Load More") {
                    viewModel.loadMoreImages()
                }
            }
        }
    }
}

struct DetailView: View {
    let image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .navigationTitle("Image Detail")
    }
}
