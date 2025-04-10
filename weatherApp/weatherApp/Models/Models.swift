//
//  Models.swift
//  weatherApp
//
//  Created by Artemiy on 11.04.2025.
//

import SwiftUI
import Foundation

struct CurrentWeather: Codable {
    let temp: Double
    let description: String
}

struct Forecast: Codable {
    let day: String
    let temp: Double
}

struct AirQuality: Codable {
    let index: Int
}

struct WeatherAlert: Codable {
    let title: String
    let description: String
}

struct WeatherMap: Codable {
    let url: URL
}
