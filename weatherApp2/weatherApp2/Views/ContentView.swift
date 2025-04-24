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
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        TextField("Enter city", text: $city)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button("Search") {
                            viewModel.load(for: city)
                        }
                    }
                    .padding(.horizontal)

                    Group {
                        SectionHeader(title: "Current Weather", state: viewModel.currentWeatherState)
                        if let data = viewModel.currentWeather {
                            Text("\(data.temp, specifier: "%.1f")°C - \(data.description)")
                        }
                    }
                    Group {
                        SectionHeader(title: "Forecast", state: viewModel.forecastState)
                        ForEach(viewModel.forecast, id: \..day) { item in
                            Text("\(item.day): \(item.temp, specifier: "%.1f")°C")
                        }
                    }
                    Group {
                        SectionHeader(title: "Air Quality", state: viewModel.airQualityState)
                        if let aq = viewModel.airQuality {
                            Text("AQI: \(aq.index)")
                        }
                    }
                    Group {
                        SectionHeader(title: "Alerts", state: viewModel.alertsState)
                        ForEach(viewModel.alerts, id: \..title) { alert in
                            VStack(alignment: .leading) {
                                Text(alert.title).bold()
                                Text(alert.description)
                            }
                        }
                    }
                    Group {
                        SectionHeader(title: "Weather Map", state: viewModel.mapState)
                        if let url = viewModel.map?.url {
                            Link("View Map", destination: url)
                        }
                    }

                    Button("Refresh") {
                        viewModel.load(for: city)
                    }
                    .padding(.top)
                }
                .padding()
            }
            .navigationTitle("Weather App")
        }
    }
}

struct SectionHeader: View {
    let title: String
    let state: WeatherViewModel.LoadingState

    var body: some View {
        HStack {
            Text(title).font(.headline)
            Spacer()
            switch state {
            case .loading:
                ProgressView()
            case .failed(let error):
                Text("Error").foregroundColor(.red).help(error.localizedDescription)
            default:
                EmptyView()
            }
        }
    }
}

