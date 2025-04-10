//
//  WeatherViewModel.swift
//  weatherApp
//
//  Created by Artemiy on 11.04.2025.
//

import SwiftUI
import Foundation

@MainActor
class WeatherViewModel: ObservableObject {
    enum LoadingState {
        case idle, loading, success, failed(Error)
    }

    @Published var currentWeather: CurrentWeather?
    @Published var forecast: [Forecast] = []
    @Published var airQuality: AirQuality?
    @Published var alerts: [WeatherAlert] = []
    @Published var map: WeatherMap?

    @Published var currentWeatherState: LoadingState = .idle
    @Published var forecastState: LoadingState = .idle
    @Published var airQualityState: LoadingState = .idle
    @Published var alertsState: LoadingState = .idle
    @Published var mapState: LoadingState = .idle

    private let service = WeatherService()
    private var loadTask: Task<Void, Never>? = nil

    func load(for city: String) {
        loadTask?.cancel()
        loadTask = Task {
            await withTaskGroup(of: Void.self) { group in
                group.addTask {
                    await self.updateCurrentWeatherState(for: city)
                }

                group.addTask {
                    await self.updateForecastState(for: city)
                }

                group.addTask {
                    await self.updateAirQualityState(for: city)
                }

                group.addTask {
                    await self.updateAlertsState(for: city)
                }

                group.addTask {
                    await self.updateMapState(for: city)
                }
            }
        }
    }

    func cancelLoad() {
        loadTask?.cancel()
    }

    // Обновление состояния текущей погоды
    private func updateCurrentWeatherState(for city: String) async {
        self.currentWeatherState = .loading
        do {
            let weather = try await self.service.fetchCurrentWeather(for: city)
            self.currentWeather = weather
            self.currentWeatherState = .success
        } catch {
            self.currentWeatherState = .failed(error)
        }
    }

    // Обновление состояния прогноза
    private func updateForecastState(for city: String) async {
        self.forecastState = .loading
        do {
            self.forecast = try await self.service.fetchForecast(for: city)
            self.forecastState = .success
        } catch {
            self.forecastState = .failed(error)
        }
    }

    // Обновление состояния качества воздуха
    private func updateAirQualityState(for city: String) async {
        self.airQualityState = .loading
        do {
            self.airQuality = try await self.service.fetchAirQuality(for: city)
            self.airQualityState = .success
        } catch {
            self.airQualityState = .failed(error)
        }
    }

    // Обновление состояния предупреждений
    private func updateAlertsState(for city: String) async {
        self.alertsState = .loading
        do {
            self.alerts = try await self.service.fetchWeatherAlerts(for: city)
            self.alertsState = .success
        } catch {
            self.alertsState = .failed(error)
        }
    }

    // Обновление состояния карты погоды
    private func updateMapState(for city: String) async {
        self.mapState = .loading
        do {
            self.map = try await self.service.fetchWeatherMap(for: city)
            self.mapState = .success
        } catch {
            self.mapState = .failed(error)
        }
    }
}
