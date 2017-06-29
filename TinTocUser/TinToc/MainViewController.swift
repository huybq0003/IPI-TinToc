//
//  ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/26/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {

    @IBOutlet weak var btnMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    @IBAction func abtnMenu(_ sender: AnyObject) {
        self.addLeftBarButtonWithImage(UIImage (named: "ic_menu")!)
    }

}

