//
//  AppDelegate.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 16/05/2023.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
              let frame = UIScreen.main.bounds
              let window = WindowBuilder.build(frame: frame)
              self.window = window
        self.window?.makeKeyAndVisible()
        FirebaseApp.configure()
        return true
    }


}

