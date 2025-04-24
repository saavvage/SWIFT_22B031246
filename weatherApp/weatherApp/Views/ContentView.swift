//
//  ContentView.swift
//  weatherApp
//
//  Created by Artemiy on 11.04.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = WeatherViewModel()
    @State private var city: String = "London"

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    // Search Bar
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Enter city", text: $city)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding(10)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(10)
                        Button(action: {
                            viewModel.load(for: city)
                        }) {
                            Image(systemName: "arrow.clockwise.circle.fill")
                                .font(.title2)
                        }
                    }
                    .padding(.horizontal)

                    // Current Weather
                    VStack(alignment: .center, spacing: 12) {
                        WeatherSectionHeader(title: "Current Weather", state: viewModel.currentWeatherState)
                        if let data = viewModel.currentWeather {
                            VStack {
                                Text("\(data.temp, specifier: "%.1f")°C")
                                    .font(.system(size: 64, weight: .bold))
                                Text(data.description.capitalized)
                                    .font(.title3)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .padding(.horizontal)

                    // Forecast
                    VStack(alignment: .leading, spacing: 8) {
                        WeatherSectionHeader(title: "Forecast", state: viewModel.forecastState)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                ForEach(viewModel.forecast, id: \.day) { item in
                                    VStack(spacing: 4) {
                                        Text(item.day)
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                        Text("\(item.temp, specifier: "%.1f")°C")
                                            .font(.headline)
                                    }
                                    .frame(width: 80, height: 80)
                                    .background(Color(.secondarySystemBackground))
                                    .cornerRadius(12)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)

                    // Air Quality
                    if let aq = viewModel.airQuality {
                        VStack(alignment: .leading, spacing: 8) {
                            WeatherSectionHeader(title: "Air Quality", state: viewModel.airQualityState)
                            Text("AQI Index: \(aq.index)")
                                .font(.title3)
                        }
                        .padding()
                        .background(Color(.systemBackground))
                        .cornerRadius(20)
                        .shadow(radius: 4)
                        .padding(.horizontal)
                    }

                    // Alerts
                    if !viewModel.alerts.isEmpty {
                        VStack(alignment: .leading, spacing: 8) {
                            WeatherSectionHeader(title: "Alerts", state: viewModel.alertsState)
                            ForEach(viewModel.alerts, id: \.title) { alert in
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(alert.title)
                                        .font(.headline)
                                    Text(alert.description)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                .padding()
                                .background(Color(.secondarySystemBackground))
                                .cornerRadius(12)
                            }
                        }
                        .padding(.horizontal)
                    }

                    // Weather Map
                    if let url = viewModel.map?.url {
                        VStack(alignment: .leading, spacing: 8) {
                            WeatherSectionHeader(title: "Weather Map", state: viewModel.mapState)
                            Link("Open Weather Map", destination: url)
                                .font(.headline)
                                .padding(10)
                                .background(Color.blue.opacity(0.1))
                                .cornerRadius(10)
                        }
                        .padding(.horizontal)
                    }

                    // Refresh Button
                    Button(action: {
                        viewModel.load(for: city)
                    }) {
                        Text("Refresh")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                }
                .padding(.vertical)
            }
            .navigationTitle("Weather")
        }
    }
}

