//
//  MenuVC.swift
//  TinToc Shipper
//
//  Created by Quylk.uit on 7/3/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit
//import SideMenuController



class MainScreenVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var nav = self.navigationController?.navigationBar
        
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupNavigationBar() {
        let image = UIImage(named: "button_addnew.png")
        let imageView = UIImageView(frame: CGRect(x: 10, y: self.view.bounds.width - (image?.size.width)!, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        
        self.navigationItem.titleView = imageView
    
    }
}


