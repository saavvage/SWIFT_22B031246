//
//  OrganicHistoryDataModel.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import Foundation

struct OrganicHistoryDataModel: Identifiable, Codable {
    let id: String
    let amount: Int
    let result: Int
    
    init(id: String = UUID().uuidString, amount: Int, result: Int) {
        self.id = UUID().uuidString
        self.amount = amount
        self.result = result
    }
}
