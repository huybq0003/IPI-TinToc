//
//  ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/26/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {

    @IBOutlet weak var lblGioHanhChinh: UILabel!
    @IBOutlet weak var lblNgoaiGio: UILabel!
    @IBOutlet weak var txtSearch: UITextFieldLoginX!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        hideKeyboardWhenTappedAround()
        setNavigationBarItem()
        
    }
    
    @IBAction func abtnChooseDate(_ sender: Any) {
        
    }
    @IBAction func abtnChooseTime(_ sender: Any) {
        
    }
    @IBAction func abtnChooseStatus(_ sender: Any) {
        
    }
    
    @IBAction func abtnFilter(_ sender: Any) {
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "BoLoc_MainShop_ViewController") as! BoLoc_MainShop_ViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    
}

