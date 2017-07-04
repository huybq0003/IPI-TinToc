//
//  NewOrder_ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/30/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class NewOrder_ViewController: BaseViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    let flagKeyboard = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func abtnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func abtnNext(_ sender: Any) {
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "HoaDon_ViewController") as! HoaDon_ViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    

}

extension NewOrder_ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.4, animations: {
            let point = textField.frame.origin.y
            self.scrollView.contentOffset.y = point - 50
        }, completion: nil)
        
        
    }
    
    
    
    
}




