//
//  ecoRecApp.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//



import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseCore

@main
struct ecoRecApp: App {
    @StateObject var wasteViewModel = ecoRecAppViewModel()
    @State private var isUserLoggedIn = false
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            NavigationView {
                if isUserLoggedIn {
                    HomeView()
                } else {
                    LoginView(isUserLoggedIn: $isUserLoggedIn)
                }
            }
            .environmentObject(wasteViewModel)
        }
    }
}

