//
//  AppDelegate.swift
//  GmailDemo
//
//  Created by Quylk.uit on 6/25/17.
//  Copyright © 2017 quylk.uit. All rights reserved.
//

import Google
import GoogleSignIn
import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import UIKit
import SlideMenuControllerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        applicationDidFinishLaunching(application)
        
        FBSDKApplicationDelegate .sharedInstance() .application(application, didFinishLaunchingWithOptions: launchOptions)
        
        let mainViewController = mainStoryboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
//        instantiateInitialViewController(withIdentifier: "MainViewController") as! MainViewController
        
        let leftViewController = mainStoryboard.instantiateViewController(withIdentifier: "LeftMenuViewController") as! LeftMenuViewController
        
        let loginVC = loginStoryboard.instantiateViewController(withIdentifier: "LoginRegisterVC") as! LoginVC
        
        let nvc: UINavigationController = UINavigationController(rootViewController: mainViewController)
        
        leftViewController.mainVC = nvc
        let slideMenuController = SlideMenuController(mainViewController: nvc, leftMenuViewController: leftViewController)
        
        SlideMenuOptions.contentViewScale = 1
        SlideMenuOptions.hideStatusBar = false;
        
        self.window?.rootViewController = slideMenuController
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationDidFinishLaunching(_ application: UIApplication) {
        var configureError: NSError?
        GGLContext.sharedInstance().configureWithError(&configureError)
        assert(configureError == nil, "Error configuring Google services: \(configureError)")
    }
    
    func application(_ application: UIApplication,
                     open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        let googleDidHandle = GIDSignIn.sharedInstance().handle(url,
                                                                sourceApplication: sourceApplication,
                                                                annotation: annotation)
        let facebookDidHandle = FBSDKApplicationDelegate.sharedInstance().application(application, open: url as URL!, sourceApplication: sourceApplication, annotation: annotation)
        
        return googleDidHandle || facebookDidHandle
    }
    
    @available(iOS 9.0, *)
    func application(_ app: UIApplication, open url: URL,
                     options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
        let fbApplication = FBSDKApplicationDelegate.sharedInstance().application(
            app,
            open: url as URL!,
            sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String,
            annotation: options[UIApplicationOpenURLOptionsKey.annotation] as Any
        )
        
        let sourceApplication = options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String
        let annotation = options[UIApplicationOpenURLOptionsKey.annotation]
        let ggApplication = GIDSignIn.sharedInstance().handle(url,
                                                             sourceApplication: sourceApplication,
                                                             annotation: annotation)
        return ggApplication || fbApplication
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

