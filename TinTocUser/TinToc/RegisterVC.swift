//
//  RegisterVC.swift
//  TinToc
//
//  Created by Quylk.uit on 6/29/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class RegisterVC: BaseViewController {

    @IBOutlet weak var nameLbl: UITextFieldLoginX!
    @IBOutlet weak var phoneLbl: UITextFieldLoginX!
    @IBOutlet weak var email: UITextFieldLoginX!
    @IBOutlet weak var password: UITextFieldLoginX!
    @IBOutlet weak var confirmPwd: UITextFieldLoginX!
    @IBOutlet weak var address: UITextFieldLoginX!
    
    @IBOutlet weak var capcha: UITextFieldLoginX!
    
    @IBOutlet weak var capchaLbl: UILabel!
    let flagKeyboard = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeCapchaBtnPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func agreeBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func registerBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
