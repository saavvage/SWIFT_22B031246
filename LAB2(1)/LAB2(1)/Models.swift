//
//  Models.swift
//  lab2
//
//  Created by Artemiy on 20.02.2025.
//


import UIKit

struct UserProfile: Hashable {
    let id: UUID
    let username: String
    var bio: String
    var followers: Int
}

struct Product: Hashable {
    let id: UUID
    let name: String
    let price: Double
    let imageUrl: String
}
