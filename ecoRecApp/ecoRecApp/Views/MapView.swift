//
//  MapView.swift
//  ecoRecApp
//
//  Created by Artemiy on 12.05.2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 43.238949, longitude: 76.889709), // Алматы
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )

    let filters = ["all", "glass", "paper", "metal", "food"]

    var body: some View {
        VStack {
            Picker("Filter", selection: $viewModel.selectedFilter) {
                ForEach(filters, id: \.self) { type in
                    Text(type.capitalized).tag(type)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Map(coordinateRegion: $region, annotationItems: viewModel.filteredPoints) { point in
                MapMarker(coordinate: CLLocationCoordinate2D(latitude: point.latitude, longitude: point.longitude))
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}
