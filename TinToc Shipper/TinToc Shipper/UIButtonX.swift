//
//  UIButtonX.swift
//  GmailDemo
//
//  Created by Quylk.uit on 6/27/17.
//  Copyright © 2017 quylk.uit. All rights reserved.
//

import Foundation
import UIKit




@IBDesignable

class UIButtonX: UIButton {
    @IBInspectable var xCornerRadius : CGFloat = 0 {
        didSet {
            layer.cornerRadius = xCornerRadius
//            layer.cornerRadius = self.bounds.size.height/2
            layer.masksToBounds = xCornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var imageWidth : CGFloat = 10 {
        didSet {
            layoutSubviews()
        }
    }
    
    // Image Inspectors
    
    @IBInspectable var enableImageRightAligned: Bool = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if enableImageRightAligned, let imageView = imageView {
            imageView.frame = CGRect(x: self.frame.width - imageRightPadding - imageWidth, y: self.frame.height/2 - 5, width: imageWidth, height: imageWidth)
            imageEdgeInsets.left = self.bounds.width - imageView.bounds.width - imageRightPadding
        }
    }
    
    
    @IBInspectable var imageRightPadding: CGFloat = 0.0 {
        didSet {
            imageEdgeInsets.right = imageRightPadding
        }
    }
    
    @IBInspectable var imageTopPadding:CGFloat = 0.0 {
        didSet {
            imageEdgeInsets.top = imageTopPadding
        }
    }

    // Title Inspectors
    @IBInspectable var titleLeftPaddding: CGFloat = 0.0 {
        didSet {
            titleEdgeInsets.left = titleLeftPaddding
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6, options: .curveEaseInOut, animations: {
            self.transform = .identity
        }, completion: nil)
        
        super.touchesBegan(touches, with: event)
    }
}
