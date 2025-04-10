//
//  WeatherService.swift
//  weatherApp
//
//  Created by Artemiy on 11.04.2025.
//

import SwiftUI
import Foundation

class WeatherService {
    let apiKey = "862f8097ee03d8a8d60eba65f05c1e20"

    func fetchCurrentWeather(for city: String) async throws -> CurrentWeather {
        guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=55.75&lon=37.62&exclude=minutely&appid=862f8097ee03d8a8d60eba65f05c1e20") else {
            throw URLError(.badURL)
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(CurrentWeatherResponse.self, from: data)
        return CurrentWeather(temp: decoded.main.temp, description: decoded.weather.first?.description ?? "")
    }

    func fetchForecast(for city: String) async throws -> [Forecast] {
        // Dummy Data for example
        return [
            Forecast(day: "Mon", temp: 20),
            Forecast(day: "Tue", temp: 22),
            Forecast(day: "Wed", temp: 21)
        ]
    }

    func fetchAirQuality(for city: String) async throws -> AirQuality {
        // Dummy data
        return AirQuality(index: 50)
    }

    func fetchWeatherAlerts(for city: String) async throws -> [WeatherAlert] {
        // Dummy data
        return [WeatherAlert(title: "Storm Warning", description: "Heavy storm expected tomorrow")]
    }

    func fetchWeatherMap(for city: String) async throws -> WeatherMap {
        // Dummy data
        return WeatherMap(url: URL(string: "https://openweathermap.org/weathermap")!)
    }
}

struct CurrentWeatherResponse: Codable {
    struct Main: Codable { let temp: Double }
    struct Weather: Codable { let description: String }
    let main: Main
    let weather: [Weather]
}

