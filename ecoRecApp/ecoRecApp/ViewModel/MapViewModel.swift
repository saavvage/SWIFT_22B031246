//
//  MapViewModel.swift
//  ecoRecApp
//
//  Created by Artemiy on 12.05.2025.
//

import Foundation
import Combine
import CoreLocation

class MapViewModel: ObservableObject {
    @Published var points: [CollectionPoint] = []
    @Published var filteredPoints: [CollectionPoint] = []
    @Published var selectedFilter: String = "all" {
        didSet {
            filterPoints()
        }
    }

    init() {
        loadPoints()
    }

    func loadPoints() {
        FirestoreService().fetchCollectionPoints { [weak self] points in
            DispatchQueue.main.async {
                self?.points = points
                self?.filterPoints()
            }
        }
    }

    private func filterPoints() {
        if selectedFilter == "all" {
            filteredPoints = points
        } else {
            filteredPoints = points.filter { $0.types.contains(selectedFilter) }
        }
    }
}
