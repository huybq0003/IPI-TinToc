//
//  ViewController.swift
//  TinToc Shipper
//
//  Created by Shin Hyuk on 6/27/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func activate(_ sender: Any) {
        showActivityIndicator(active: true, view: self.view)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            showActivityIndicator(active: false, view: self.view)
        }
    }

}

