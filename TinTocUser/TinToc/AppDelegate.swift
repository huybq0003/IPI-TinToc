//
//  AppDelegate.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/26/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let leftViewController = storyboard.instantiateViewController(withIdentifier: "LeftMenuViewController") as! LeftMenuViewController
        
        
        let nvc: UINavigationController = UINavigationController(rootViewController: mainViewController)
        leftViewController.mainVC = nvc
        let slideMenuController = SlideMenuController(mainViewController: nvc, leftMenuViewController: leftViewController)
        
        SlideMenuOptions.contentViewScale = 1
        SlideMenuOptions.hideStatusBar = false;
        
        self.window?.rootViewController = slideMenuController
        self.window?.makeKeyAndVisible()
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
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        if self.window?.rootViewController?.presentedViewController is BoLoc_MainShop_ViewController {
            
            let boLoc_MainShop_ViewController = self.window!.rootViewController!.presentedViewController as! BoLoc_MainShop_ViewController
            
            if boLoc_MainShop_ViewController.isPresented { // Check current controller state
                return UIInterfaceOrientationMask.landscapeLeft;
            } else {
                return UIInterfaceOrientationMask.portrait;
            }
            
        } else {
            return UIInterfaceOrientationMask.portrait;
        }
        
        
    }

}

