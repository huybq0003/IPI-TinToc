//
//  File.swift
//  TinToc
//
//  Created by Quylk.uit on 6/30/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class UIButtonXNonanimate: UIButton {
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
}
