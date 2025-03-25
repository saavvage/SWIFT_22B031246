//
//  AppDelegate.swift
//  lab2
//
//  Created by Artemiy on 20.02.2025.
//


import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let storeVC = StoreViewController()
        let navController = UINavigationController(rootViewController: storeVC)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        print("App launched")
        return true
    }
}
