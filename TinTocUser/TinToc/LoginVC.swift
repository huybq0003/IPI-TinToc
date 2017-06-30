//
//  LoginVC.swift
//  TinToc
//
//  Created by Quylk.uit on 6/29/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit
import GoogleAPIClientForREST
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit

class LoginVC: UIViewController, GIDSignInDelegate, GIDSignInUIDelegate {

    @IBOutlet weak var userTxt: UITextFieldLoginX!
    @IBOutlet weak var passwordTxt: UITextFieldLoginX!
    @IBOutlet weak var forgotPwdLbl: UILabel!
    @IBOutlet weak var withOtherAccLbl: UILabel!
    @IBOutlet weak var registerLbl: UILabel!
    
    var fbLoginManager: FBSDKLoginManager!
    private let service = GTLRGmailService()
    var userID = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
        fbLoginManager = FBSDKLoginManager()
        hideKeyboardWhenTappedAround()
    }

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
            showAlert(title: "Authentication Error", message: error.localizedDescription)
            self.service.authorizer = nil
        } else {
            print("Quylk: \(user.profile.familyName)")
            print("Quylk: \(user.profile.email)")
        }
    }
    
    // Helper for showing an alert
    func showAlert(title : String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let ok = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func signInBtnPressed(_ sender: UIButtonX) {
        GIDSignIn.sharedInstance().signOut()
        print("logouted")
    }
    
    @IBAction func fbBtnPressed(_ sender: UIButton) {
        fbLoginManager.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if (error == nil){
                let fbloginresult : FBSDKLoginManagerLoginResult = result!
                if fbloginresult.grantedPermissions != nil {
                    if(fbloginresult.grantedPermissions.contains("email")) {
                        if((FBSDKAccessToken.current()) != nil){
                            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
                                if (error == nil){
                                    let dict = result as! [String : AnyObject]
                                    print(dict)
//                                    print("QUylk: \(dict["name"])")
                                }
                            })
                        }
                    }
                }
            }
        }
    }

    @IBAction func ggBtnPressed(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signIn()
    }
    
    @IBAction func tapForgotPwdBtnPressed(_ sender: UITapGestureRecognizer) {
        animateLable(lable: forgotPwdLbl)
        print("tapForgotPwdBtnPressed")
    }
    
    @IBAction func withOtherAccount(_ sender: UITapGestureRecognizer) {
        animateLable(lable: withOtherAccLbl)
        print("withOtherAccount")
    }
    
    @IBAction func registerBtnPressed(_ sender: UITapGestureRecognizer) {
        animateLable(lable: registerLbl)
        let registerVC = loginStoryboard.instantiateViewController(withIdentifier: "RegisterViewController")
        
        self.present(registerVC, animated: true, completion: nil)
    }
    
    func animateLable(lable: UILabel) {
        let color = lable.textColor
        UIView.animate(withDuration: 0.5, animations: { 
            lable.alpha = 0.5
            lable.textColor = UIColor.white
        }) { (_) in
            lable.alpha = 1
            lable.textColor = color
        }
    }
}
