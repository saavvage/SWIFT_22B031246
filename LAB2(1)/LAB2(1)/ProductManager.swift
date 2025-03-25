//
//  ProductManager.swift
//  lab2
//
//  Created by Artemiy on 20.02.2025.
//


import Foundation

class ProductManager {
    private var products: [Product] = [
        Product(id: UUID(), name: "iPhone 15", price: 999, imageUrl: "iphone"),
        Product(id: UUID(), name: "MacBook Pro", price: 1999, imageUrl: "macbook"),
        Product(id: UUID(), name: "iPad Air", price: 599, imageUrl: "ipad"),
        Product(id: UUID(), name: "Apple Watch", price: 399, imageUrl: "watch"),
        Product(id: UUID(), name: "AirPods Pro", price: 249, imageUrl: "airpods")
    ]
    
    func getProducts() -> [Product] {
        return products
    }
}
