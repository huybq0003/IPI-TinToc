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
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: .UIKeyboardWillHide, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    func keyboardWillShow(notification: NSNotification) {
        if  let vc = self as? ShopInfo_ViewController
        {
            if vc.flagKeyboard == false
            {
                if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
                    if self.view.frame.origin.y == 0{
                        self.view.frame.origin.y -= keyboardSize.height*0.3
                    }
                }
            }
            
        }
    }
    
    
    func keyboardWillHide(notification: NSNotification) {
        
        if let vc = self as? ShopInfo_ViewController
            
        {
            if vc.flagKeyboard == false
            {
                if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
                    if self.view.frame.origin.y != 0{
                        self.view.frame.origin.y += keyboardSize.height*0.3
                    }
                }
            }
        }
   
    }
    
    
    
}

extension BaseViewController {
    
    func setNavigationBarItem() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barTintColor = UIColor.gray
        self.addLeftBarButtonWithImage(UIImage(named: "ic_none")!)
        self.slideMenuController()?.removeLeftGestures()
        self.slideMenuController()?.addLeftGestures()
    }
    
    func removeNavigationBarItem() {
        self.navigationItem.leftBarButtonItem = nil
        self.slideMenuController()?.removeLeftGestures()
    }
}
