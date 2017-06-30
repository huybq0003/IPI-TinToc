//
//  ShopInfo_ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/28/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class ShopInfo_ViewController: BaseViewController {
    @IBOutlet weak var txtCode: UITextFieldLoginX!
    @IBOutlet weak var txtName: UITextFieldLoginX!
    @IBOutlet weak var txtMail: UITextFieldLoginX!
    @IBOutlet weak var txtPhone: UITextFieldLoginX!
    @IBOutlet weak var txtPlace: UITextFieldLoginX!
    var flagKeyboard = false
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        
    }

   
    
    @IBAction func abtnCancel(_ sender: Any) {
        hideKeyboardWhenTappedAround()
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func abtnConfirm(_ sender: Any) {
        
    }
    
}
