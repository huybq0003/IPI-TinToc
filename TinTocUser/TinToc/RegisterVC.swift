//
//  RegisterVC.swift
//  TinToc
//
//  Created by Quylk.uit on 6/29/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var nameLbl: UITextFieldLoginX!
    @IBOutlet weak var phoneLbl: UITextFieldLoginX!
    @IBOutlet weak var email: UITextFieldLoginX!
    @IBOutlet weak var password: UITextFieldLoginX!
    @IBOutlet weak var confirmPwd: UITextFieldLoginX!
    @IBOutlet weak var address: UITextFieldLoginX!
    
    @IBOutlet weak var capcha: UITextFieldLoginX!
    
    @IBOutlet weak var capchaLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func changeCapchaBtnPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func agreeBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func registerBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
