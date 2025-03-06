//
//  HeroServices.swift
//  HeroRandom
//
//  Created by Artemiy on 06.03.2025.
//

import Foundation

class HeroService: ObservableObject {
    @Published var heroes: [Hero] = []
    
    private let apiURL = "https://akabab.github.io/superhero-api/api/all.json"

    func fetchHeroes() {
        guard let url = URL(string: apiURL) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                DispatchQueue.main.async {
                    do {
                        self.heroes = try JSONDecoder().decode([Hero].self, from: data)
                    } catch {
                        print("Error decode JSON: \(error)")
                    }
                }
            } else if let error = error {
                print("network error: \(error)")
            }
        }.resume()
    }

    func getRandomHero() -> Hero? {
        return heroes.randomElement()
    }
}
