//
//  CollectionPoint.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import Foundation

class CollectionPoint: Identifiable, Decodable, Encodable {
    var id: String
    var name: String
    var latitude: Double
    var longitude: Double
    var types: [String]
    
    init(id: String, name: String, latitude: Double, longitude: Double, types: [String]) {
        self.id = id
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.types = types
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case latitude
        case longitude
        case types
    }
}

