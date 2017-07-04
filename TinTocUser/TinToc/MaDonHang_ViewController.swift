//
//  MaDonHang_ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/29/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class MaDonHang_ViewController: BaseViewController {
    @IBOutlet weak var lblCode: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    

    @IBAction func abtnBack(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        //dismiss(animated: true, completion: nil)
    }
    
}
