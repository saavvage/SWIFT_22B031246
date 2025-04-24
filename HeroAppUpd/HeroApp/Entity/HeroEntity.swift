//
//  HeroEntity.swift
//  HeroApp
//
//  Created by Artemiy on 25.03.2025.
//

import Foundation

struct HeroEntity: Decodable {
    let id: Int
    let name: String
    let appearance: Appearance
    let images: HeroImage
    var heroImageUrl: URL? {
        URL(string: images.sm)
    }

    struct Appearance: Decodable {
        let race: String?
    }

    struct HeroImage: Decodable {
        let sm: String
        let md: String
    }
}
