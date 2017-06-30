//
//  Function.swift
//  Soroeru
//
//  Created by Phuc Huynh on 3/21/16.
//  Copyright © 2016 soroeru.inc. All rights reserved.
//

import Foundation
import CoreLocation
import SystemConfiguration
import UIKit
//import ARSLineProgress

//
//func showActivityIndicator(active: Bool, view: UIView) {
//    let blurEffect = UIBlurEffect(style: .light)
//    let blurEffectView = UIVisualEffectView(effect: blurEffect)
//    blurEffectView.tag = 987
//    if !active {
//        view.viewWithTag(987)?.removeFromSuperview()
//        ARSLineProgress.hide()
//    } else {
//        blurEffectView.frame = view.bounds
//        view.bringSubview(toFront: blurEffectView)
//        view.addSubview(blurEffectView)
//        
//        ARSLineProgressConfiguration.backgroundViewColor = UIColor.black.cgColor
//        ARSLineProgressConfiguration.backgroundViewStyle = .blur
//        ARSLineProgressConfiguration.backgroundViewCornerRadius = 25.0
//        ARSLineProgressConfiguration.backgroundViewDismissTransformScale = 0
//        ARSLineProgress.show()
//    }
//}


func setStatusBarBackgroundColor(_ color: UIColor) {
    
    guard  let statusBar = (UIApplication.shared.value(forKey: "statusBarWindow") as AnyObject).value(forKey: "statusBar") as? UIView else {
        return
    }
    statusBar.backgroundColor = color
}


func parseDictToJsonString(data: NSDictionary) -> String
{
    let jsonData = try! JSONSerialization.data(withJSONObject: data)
    return String(data: jsonData, encoding: .utf8)!
}

func sortCaseInsensitive(_ values:[Int]) -> [Int]{
    
    let sortedValues = values.sorted(by: { (value1, value2) -> Bool in
        
        if (value1 < value2) {
            return true
        } else {
            return false
        }
    })
    return sortedValues
}
func convertFromStringToFloat(_ string: String) -> Float
{
    let numberFormatter = NumberFormatter()
    let number = numberFormatter.number(from: string)
    let numberFloatValue = number!.floatValue
    return numberFloatValue
}
func findKeyForValueArray(_ value: String, dictionary: [String: [String]]) ->String?
{
    for (key, array) in dictionary
    {
        if (array.contains(value))
        {
            return key
        }
    }
    
    return nil
}

func findKeyForValueString(_ value: String, dictionary: [String: String]) ->String?
{
    for (key, element) in dictionary
    {
        if element == value{
            return key
        }
    }
    
    return nil
}


func convertStringToDictionary ( _ text : String) -> [String:AnyObject]? {
    if let data = text.data(using: String.Encoding.utf8) {
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:AnyObject]
            return json
        } catch {
            print("Something went wrong")
        }
    }
    return nil
}





func convertCurrentDateWithOutDay() -> String {
    let currentDate = Date()
    //Get date
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "YYYY/MM/dd"
    let dateString = dateFormatter.string(from: currentDate)
    let dateComponent = dateString.components(separatedBy: "/")
    let str1 = dateComponent[0]+"年"
    let str2 = dateComponent[1]+"月"
    let str3 = dateComponent[2]+"日"
    
    return str1 + str2 + str3
}

func covertToJapanDate(_ time : String) -> String
{
    let toArray = time.components(separatedBy: "-")
    let str1 = toArray[0]+"年"
    let str2 = toArray[1]+"月"
    let str3 = toArray[2]+"日"
    let str4 = str1+str2+str3
    return str4
}

func deviceID() ->String
{
    let device : UIDevice = UIDevice.current
    return (device.identifierForVendor?.uuidString)!
    //return "dasdsfsdfsd"
}



func attributeForTitleTV(_ titleText : String) -> NSAttributedString{
    let style = NSMutableParagraphStyle()
    style.lineSpacing = 6
    style.lineBreakMode = .byTruncatingTail
    let attribute = [NSParagraphStyleAttributeName : style]
    
    return NSAttributedString(string: titleText, attributes: attribute)
}


func uniq<S: Sequence, E: Hashable>(_ source: S) -> [E] where E==S.Iterator.Element {
    var seen: [E:Bool] = [:]
    return source.filter({ (v) -> Bool in
        return seen.updateValue(true, forKey: v) == nil
    })
}



func isCheckControllerAlreadyOnNavigationStack(_ views : [UIViewController] , vc : AnyClass) -> Bool
{

    for i in 0...views.count - 1   {
        if (views[i].isKind(of: vc))
        {
            return true
            
        }
        
        
    }

    return false
    
}

func paddingLeft(_ textField: UITextField)
{
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: textField.frame.height))
    textField.leftView = paddingView
    textField.leftViewMode = UITextFieldViewMode.always
}

func showAlert(_ title : String, message : String, sender : UIViewController) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    sender.present(alert, animated: true, completion: nil)
}


func addSeparator(view: UIView)
{
    let screenSize = UIScreen.main.bounds
    let separatorHeight = CGFloat(1)
    let additionalSeparator = UIView.init(frame: CGRect(x: 0, y: view.frame.size.height-separatorHeight, width: screenSize.width, height: separatorHeight))
    additionalSeparator.backgroundColor = UIColor(hex: "AAAAAA")
    view.addSubview(additionalSeparator)
}
extension Array {
    func splitBy(_ subSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: subSize).map { startIndex in
            let endIndex =  startIndex.advanced(by: subSize)
           
            return Array(self[startIndex ..< endIndex])
        }
    }
}


//func showErrorMessage(error : Int, vc: UIViewController)
//{
//    if error == -1
//    {
//        customAlertView(vc, title: getErrorStringConfig(code: String(describing: error))! , btnTitleNameNormal: name_confirm_Button_Normal,titleButton: "OK",  blockCallback: { (result) in
//            
//            defaults.set("", forKey: "token")
//            defaults.set("", forKey: "userphone")
//            token_API =  defaults.value(forKey: "token") as! String
//            appDelegate.setRootViewFirstTime()
//        })
//    }
//    else
//    {
//        
//        customAlertView(vc, title: getErrorStringConfig(code: String(describing: error))! , btnTitleNameNormal: name_confirm_Button_Normal,titleButton: "OK",  blockCallback: { (result) in
//        })
//        
//    }
//
//}

func arrayDictToJSON(dictionaryOrArray:AnyObject) -> String?
{
    do {
        let jsonData = try JSONSerialization.data(withJSONObject: dictionaryOrArray, options: JSONSerialization.WritingOptions.prettyPrinted)
        return String(data: jsonData, encoding: String.Encoding.utf8)
    } catch {
        print("parse Json Error")
        return nil
    }
}




func connectedToNetwork() -> Bool {
    
    var zeroAddress = sockaddr_in()
    zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
    zeroAddress.sin_family = sa_family_t(AF_INET)
    
    guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
        $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
            SCNetworkReachabilityCreateWithAddress(nil, $0)
        }
    }) else {
        return false
    }
    
    var flags: SCNetworkReachabilityFlags = []
    if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
        return false
    }
    
    let isReachable = flags.contains(.reachable)
    let needsConnection = flags.contains(.connectionRequired)
    
    return (isReachable && !needsConnection)
}
func convertToDictionary(text: String) -> [String: Any]? {
    if let data = text.data(using: .utf8) {
        do {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
            print(error.localizedDescription)
        }
    }
    return nil
}


func isNotNull(_ object:AnyObject?) -> Bool {
    guard let object = object else {
        return false
    }
    return (isNotNSNull(object) && isNotStringNull(object))
}
func addDoneButtonOnNumpad(_ textField: UITextField,vc:UIViewController) {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        let flexBarButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                            target: nil, action: nil)
        let doneBarButton = UIBarButtonItem(barButtonSystemItem: .done,
                                            target: vc.view, action: #selector(UIView.endEditing(_:)))
        keyboardToolbar.items = [flexBarButton, doneBarButton]
        textField.inputAccessoryView = keyboardToolbar
    
}

func isNotNSNull(_ object:AnyObject) -> Bool {
    return object.classForCoder != NSNull.classForCoder()
}

func isNotStringNull(_ object:AnyObject) -> Bool {
    if let object = object as? String , object.uppercased() == "NULL" {
        return false
    }
    return true
}

func callNumber(_ phoneNumber:String) {
    if let phoneCallURL:URL = URL(string: "tel://\(phoneNumber)") {
        let application:UIApplication = UIApplication.shared
        if (application.canOpenURL(phoneCallURL)) {
            application.open(phoneCallURL, options:[:] , completionHandler: nil)
        }
    }
}

func randomStringWithLength (_ len : Int) -> NSString {
    
    let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    let randomString : NSMutableString = NSMutableString(capacity: len)
    
    for _ in 0 ..< len {
        let length = UInt32 (letters.length)
        let rand = arc4random_uniform(length)
        randomString.appendFormat("%C", letters.character(at: Int(rand)))
    }
    
    return randomString
}

func imageWithImage(_ image:UIImage,size:CGSize) -> UIImage
{
    if (UIScreen.main.responds(to: #selector(NSDecimalNumberBehaviors.scale))) {
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
    }
    else
    {
        UIGraphicsBeginImageContext(size)
    }
    image.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return newImage!
}
func imageWithImage (_ image:UIImage, width:CGFloat,height:CGFloat)->UIImage
{
    let oldWidth = image.size.width
    let oldHeight = image.size.height
    let scaleFactor = (oldWidth > oldHeight) ? width / oldWidth : height / oldHeight
    let newHeight = oldHeight*scaleFactor
    let newWidth = oldWidth*scaleFactor
    let newSize = CGSize(width: newWidth, height: newHeight)
    return imageWithImage(image, size: newSize)
}

func dismissAllViewController(_ vc: UIViewController)
{
    vc.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
}

func customActivityIndicatory(_ viewContainer: UIView, startAnimate:Bool? = true)  {
    let mainContainer: UIView = UIView(frame: viewContainer.frame)
    mainContainer.center = viewContainer.center
    mainContainer.backgroundColor = UIColor.clear
    mainContainer.alpha = 1
    mainContainer.tag = 789456123
    mainContainer.isUserInteractionEnabled = false
    
    let viewBackgroundLoading: UIView = UIView(frame: CGRect(x:0,y: 0,width: 80,height: 80))
    viewBackgroundLoading.center = viewContainer.center
    viewBackgroundLoading.backgroundColor = UIColor.black
    viewBackgroundLoading.alpha = 0.5
    viewBackgroundLoading.clipsToBounds = true
    viewBackgroundLoading.layer.cornerRadius = 15
    
    let activityIndicatorView: UIActivityIndicatorView = UIActivityIndicatorView()
    activityIndicatorView.frame = CGRect(x:0.0,y: 0.0,width: 40.0, height: 40.0)
    activityIndicatorView.activityIndicatorViewStyle =
        UIActivityIndicatorViewStyle.whiteLarge
    activityIndicatorView.center = CGPoint(x: viewBackgroundLoading.frame.size.width / 2, y: viewBackgroundLoading.frame.size.height / 2)
    
    if startAnimate!{
        viewBackgroundLoading.addSubview(activityIndicatorView)
        mainContainer.addSubview(viewBackgroundLoading)
        viewContainer.addSubview(mainContainer)
        activityIndicatorView.startAnimating()
    }else{
        for subview in viewContainer.subviews{
            if subview.tag == 789456123{
                subview.removeFromSuperview()
            }
        }
    }
    
}




func setGradian(bounds: CGRect, colors: [CGColor],startPoint: CGPoint?, endPoint: CGPoint?) -> UIImage
{
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = bounds
    gradientLayer.colors =  colors
    if startPoint != nil && endPoint != nil
    {
        gradientLayer.startPoint = startPoint!
        gradientLayer.endPoint = endPoint!
    }
    UIGraphicsBeginImageContext(gradientLayer.bounds.size)
    gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image!
    
    
  

}

func getFileURL(fileName: String) -> NSURL {
    let documents = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
    return documents.appendingPathComponent(fileName) as NSURL
    

}
func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        completion()
    }
}
//func getErrorStringConfig(code: String) -> String?
//{
//    var arrayDicConfig : [NSDictionary] = []
//    
//    if MCLocalization.sharedInstance().language == "en"
//    {
//        arrayDicConfig = NSKeyedUnarchiver.unarchiveObject(withFile: filePathEnglish) as! [NSDictionary]
// 
//    }
//    else if MCLocalization.sharedInstance().language == "vi"
//    {
//        arrayDicConfig = NSKeyedUnarchiver.unarchiveObject(withFile: filePathVietNamese) as! [NSDictionary]
//     
//    }
//    if let result = arrayDicConfig.flatMap({$0[code]}).first{
//        return String(describing: result)//->title of the other
//    } else {
//        return "Missing error code"
//    }
//}
func maskRoundedImage(image: UIImage, radius: CGFloat) -> UIImage {
    let imageView: UIImageView = UIImageView(image: image)
    var layer: CALayer = CALayer()
    layer = imageView.layer
    
    layer.masksToBounds = true
    layer.cornerRadius = CGFloat(radius)
    
    UIGraphicsBeginImageContext(imageView.bounds.size)
    layer.render(in: UIGraphicsGetCurrentContext()!)
    let roundedImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return roundedImage!
}
//func parseOjbectToListJson(list:[JSONSerializable]) -> String
//{
//    let listJsonArray = NSMutableArray()
//    for item in (list.enumerated())
//    {
//        if let json = item.element.toJSON() {
//            listJsonArray.add(convertStringToDictionary(json)!)
//        }
//    }
//    
//    return listJsonArray.jsonRepresentation()
//}
func convertImageToBase64(image: UIImage) -> String {
    let resizeImage = imageWithImage(image, width: 200, height: 200)
    let imageData = UIImagePNGRepresentation(resizeImage)
    let base64String = imageData?.base64EncodedString(options: .lineLength64Characters)
    return base64String!
    
}
func convertBase64ToImage(base64String: String) -> UIImage {
    
    let decodedData = Data(base64Encoded: base64String, options: .init(rawValue: 0) )
    
    let decodedimage = UIImage(data: decodedData!)
    
    return decodedimage!
    
}// end conve

func getFirstDayOfMonth() ->  Date
{
    let components = Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Date()))!
    return components
}


