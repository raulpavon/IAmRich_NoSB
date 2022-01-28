//
//  AppDelegate.swift
//  IamRich_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
        var iAmRichCoordinator: IAmRichCoordinator?
        let navController = UINavigationController()


        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            initializeWindow()
            return true
        }
        
        func initializeWindow() {
            iAmRichCoordinator = IAmRichCoordinator(navigationController: navController)
            iAmRichCoordinator?.start()
            
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.rootViewController = navController
            window?.makeKeyAndVisible()
        }
}

