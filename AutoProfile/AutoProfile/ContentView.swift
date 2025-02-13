//
//  ContentView.swift
//  AutoProfile
//
//  Created by Artemiy on 13.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainProfile()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
            Hobbies()
                .tabItem {
                        Label("Hobbies", systemImage: "star.fill")
                    }
                    Goals()
                        .tabItem{
                            Label("Goals", systemImage: "checkmark.circle.fill")
                        }
                }
        }
    }
