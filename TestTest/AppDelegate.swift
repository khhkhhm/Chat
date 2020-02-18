//
//  AppDelegate.swift
//  TestTest
//
//  Created by p.a.belov on 16/02/2020.
//  Copyright © 2020 p.a.belov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func appState(_ application: UIApplication.State?) -> String{
        switch application {
            case .background: return "Background"
            case .active: return "Active"
            case .inactive: return "Inactive"
        default: return "Not Active"
        }
    }
    
    func PrintLog(_ fname: String, _ secondState: UIApplication.State? = UIApplication.State.inactive) {
        #if DEBUG
            if fname.contains("Will") {
                print("Application moved from \(appState(UIApplication.shared.applicationState)) to \(appState(secondState)): \(fname)")
            }
            else {
                print("Application moved from \(appState(secondState)) to \(appState(UIApplication.shared.applicationState)): \(fname)")
            }
        #endif
    }
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        PrintLog(#function)
        return true
        
    }
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        PrintLog(#function, nil)
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        PrintLog(#function)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        PrintLog(#function)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        PrintLog(#function, nil)
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        PrintLog(#function)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        PrintLog(#function)
    }

}

