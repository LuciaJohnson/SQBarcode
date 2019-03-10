//
//  AppDelegate.swift
//  QR Blank
//
//  Created by Ka Ho on 27/6/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let stack = CoreDataStack(modelName: "Model")!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        

        
        if !UserDefaults.standard.bool(forKey: "initialInstall") {
            UserDefaults.standard.set(true, forKey: "initialInstall")
            UserDefaults.standard.set([false,true,true], forKey: "switchOptions")
            UserDefaults.standard.synchronize()
        }
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewControllerFist  = mainStoryboard.instantiateViewController(withIdentifier: "MainVC")
        window?.rootViewController = viewControllerFist
        window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}

