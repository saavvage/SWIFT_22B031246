//
//  HeroLisyViewModel.swift
//  HeroApp
//
//  Created by Artemiy on 25.03.2025.
//

import SwiftUI

final class HeroListViewModel: ObservableObject {
    @Published private(set) var heroes: [HeroListModel] = []

    private let service: HeroService
    private let router: HeroRouter

    init(service: HeroService, router: HeroRouter) {
        self.service = service
        self.router = router
    }

    func routeToDetail(by id: Int) {
        router.showDetails(for: id)
    }
}
