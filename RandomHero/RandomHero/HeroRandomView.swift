//
//  HeroRandomView.swift
//  HeroRandom
//
//  Created by Artemiy on 06.03.2025.
//

import SwiftUI

struct Hero: Decodable {
    let name: String
    let images: ImageURLs
    let biography: Biography
    let appearance: Appearance
    let powerstats: Powerstats
    
    struct ImageURLs: Decodable {
        let md: String
        let lg: String
    }
    
    struct Biography: Decodable {
        let fullName: String
    }
    
    struct Appearance: Decodable {
        let gender: String
        let race: String?
        let height: [String]
        let weight: [String]
    }
    
    struct Powerstats: Decodable {
        let intelligence: Int
        let strength: Int
        let speed: Int
        let combat: Int
    }
}

final class ViewModel: ObservableObject {
    @Published var selectedHero: Hero?
    private var heroes: [Hero] = []
    
    func fetchHeroes() async {
        guard let url = URL(string: "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json") else { return }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            heroes = try JSONDecoder().decode([Hero].self, from: data)
        } catch {
            print("Error: \(error)")
        }
    }
    
    func getRandomHero() {
        selectedHero = heroes.randomElement()
    }
}

struct HeroRandomView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            if let hero = viewModel.selectedHero {
                VStack {
                    AsyncImage(url: URL(string: hero.images.lg)) { image in
                        image.resizable().scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.blue, lineWidth: 3))

                    Text(hero.name)
                        .font(.title)
                        .bold()
                    
                    Text("Full Name: \(hero.biography.fullName)")
                    Text("Gender: \(hero.appearance.gender)")
                    Text("Race: \(hero.appearance.race ?? "Unknown")")
                    Text("Height: \(hero.appearance.height[1])")
                    Text("Weight: \(hero.appearance.weight[1])")
                    Text("Intelligence: \(hero.powerstats.intelligence)")
                    Text("Strength: \(hero.powerstats.strength)")
                    Text("Speed: \(hero.powerstats.speed)")
                    Text("Combat: \(hero.powerstats.combat)")
                }
                .padding()
            } else {
                Text("Tap the button to get a random hero!")
                    .font(.headline)
                    .padding()
            }
            
            Button(action: {
                viewModel.getRandomHero()
            }) {
                Text("Randomize Hero")
                    .bold()
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .task {
            await viewModel.fetchHeroes()
        }
    }
}
