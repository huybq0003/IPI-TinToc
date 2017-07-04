//
//  Define.swift
//  Around
//
//  Created by phuc.huynh on 8/2/16.
//  Copyright © 2016 phuc.huynh. All rights reserved.
//

import Foundation
import UIKit
let defaults = UserDefaults.standard
let appDelegate = UIApplication.shared.delegate as! AppDelegate
let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
let loginStoryboard = UIStoryboard(name: "Login+Register", bundle: nil)

var ROOTVIEW = UIApplication.shared.keyWindow?.rootViewController
var token_API = defaults.value(forKey: "token") as! String
var userPhone_API = defaults.value(forKey: "userphone") as! String

enum UIUserInterfaceIdiom : Int
{
    case unspecified
    case phone
    case pad
}

struct ScreenSize
{
    static let SCREEN_WIDTH         = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT        = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}

struct DeviceType
{
    static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
    static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
    static let IS_IPHONE_6          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
    static let IS_IPHONE_6P         = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
    static let IS_IPAD              = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
}


let kSegueLoginToHome = "logintohome"
let kSegueLoginToRegister = "logintoregister"
let kSegueRegisterToVerify = "registertoverify"
let kSegueVerifyToHome = "verifytohome"
let kCountryCode = "84"








