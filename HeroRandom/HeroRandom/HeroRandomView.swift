//
//  HeroRandomView.swift
//  HeroRandom
//
//  Created by Artemiy on 06.03.2025.
//

import SwiftUI

struct HeroRandomView: View {
    @StateObject private var heroService = HeroService()
    @State private var selectedHero: Hero?

    var body: some View {
        VStack {
            if let hero = selectedHero {
                VStack {
                    AsyncImage(url: URL(string: hero.images.kg)) { image in
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
                selectedHero = heroService.getRandomHero()
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
        .onAppear {
            heroService.fetchHeroes()
        }
    }
}
