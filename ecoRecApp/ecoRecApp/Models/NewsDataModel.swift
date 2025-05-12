//
//  NewsDataModel.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import Foundation

struct NewsDataModel: Identifiable {
    let id: String = UUID().uuidString
    let cardTitle: String
    let informationCardTitle: String
    let title: String
    let Image: URL?
    let contents: String
}
