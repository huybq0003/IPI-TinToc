//
//  UITextFieldLoginX.swift
//  GmailDemo
//
//  Created by Quylk.uit on 6/27/17.
//  Copyright © 2017 quylk.uit. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class UITextFieldLoginX: UITextField {
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateUI()
        }
    }
    
    @IBInspectable var xLeftImage: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }
    
    @IBInspectable var yLeftImage: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }
    
    @IBInspectable var leftImageWidth: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }
    
    @IBInspectable var leftImageHeight: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }
    
    
    
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            updateUI()
        }
    }
    
    @IBInspectable var rightPadding: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }
    
    
    
    @IBInspectable var rightImageWidth: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }
    
    @IBInspectable var rightImageHeight: CGFloat = 0 {
        didSet {
            updateUI()
        }
    }
    
    
    @IBInspectable var bottomLine: Bool = false {
        didSet {
            let bottomLine = CALayer()
            bottomLine.frame = CGRect(x: 0.0, y: self.frame.height-1 , width: self.frame.width, height: 1.0)
            bottomLine.backgroundColor = self.tintColor.cgColor
            self.borderStyle = .none
            self.layer.addSublayer(bottomLine)
        }
    }
    
    func updateUI() {
        if let image = leftImage {
            leftViewMode = .always
            let imageView = UIImageView(frame: CGRect(x: xLeftImage, y: yLeftImage, width: leftImageWidth, height: leftImageHeight))
            imageView.image = image
            let width = leftPadding + 20
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
            leftView = view
        
        } else {
            leftViewMode = .never
          
        }
        
        
        if let image = rightImage {
            
            rightViewMode = .always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 5, width: rightImageWidth, height: rightImageHeight))
            imageView.image = image
            let width = rightPadding + 20
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
            rightView = view
        }else {
            rightViewMode = .never
        }
        
        
        attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: [NSForegroundColorAttributeName: tintColor])
        
    }
}
