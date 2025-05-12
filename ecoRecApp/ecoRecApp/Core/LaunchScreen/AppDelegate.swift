//
//  AppDelegate.swift
//  ecoRecApp
//
//  Created by Artemiy on 11.05.2025.
//

import UIKit
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        FirebaseApp.configure() // ✅ оставить ТОЛЬКО здесь, если вы используете AppDelegate
        return true
    }
}

