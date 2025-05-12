//
//  WasteType.swift
//  ecoRecApp
//
//  Created by Artemiy on 12.05.2025.
//

import Foundation

enum WasteTypes: String, CaseIterable, Identifiable {
    case all = "All"
    case glass = "Glass"
    case paper = "Paper"
    case metal = "Metal"
    case food = "Food"
    
    var id: String { self.rawValue }
}
