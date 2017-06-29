//
//  BaseViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/28/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func addSlideMenuController() {
        
        let leftMenuViewController = mainStoryboard.instantiateViewController(withIdentifier: "LeftMenuViewController") as! LeftMenuViewController
        
        let mainViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        
        let slideMenuController = SlideMenuController(mainViewController: mainViewController, leftMenuViewController: leftMenuViewController)
        
        SlideMenuOptions.hideStatusBar = false
        
        UIApplication.shared.keyWindow?.rootViewController = slideMenuController
        UIApplication.shared.keyWindow?.makeKeyAndVisible()
        
        
    }
    
}
