//
//  AppDelegate.swift
//  Shop
//
//  Created by Георгий Малюков on 29.09.15.
//  Copyright © 2015 Georgiy Malyukov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController = MainViewController()
        self.window!.makeKeyAndVisible()
        
        return true
    }

}

