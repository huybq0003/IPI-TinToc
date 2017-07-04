//
//  AppDelegate.swift
//  TinToc Shipper
//
//  Created by Shin Hyuk on 6/27/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit
import SidePanel


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var sidePanelController: SidePanelController?
    var vc1: UINavigationController?
    var vc2: UINavigationController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        vc1 = UINavigationController(rootViewController: sb.instantiateViewController(withIdentifier: "VC1"))
        vc2 = UINavigationController(rootViewController: sb.instantiateViewController(withIdentifier: "VC2"))
        
        let sc = sb.instantiateViewController(withIdentifier: "SideViewController")
        
        let svc = MySidePanelController(sideController: sc)
        svc.selectedViewController = vc1
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = svc
        self.window?.makeKeyAndVisible()
        
        self.sidePanelController = svc
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

class MySidePanelController: SidePanelController {
    override func leftButton() -> UIButton {
        let frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        let button = UIButton(frame: frame)
        button.setImage(UIImage(named: "ic_menu"), for: .normal)
        return button
        
    }
}

