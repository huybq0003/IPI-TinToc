//
//  CustomLabel.swift
//  Around App
//
//  Created by phuc.huynh on 8/5/16.
//  Copyright © 2016 phuc.huynh. All rights reserved.
//

import UIKit


class LineBottomLabel: UILabel {
    
    @IBInspectable var bottomLine: Bool = false {
        didSet {
            let bottomLine = CALayer()
            bottomLine.frame = CGRect(x: 0.0, y: self.frame.height-1 , width: self.frame.width, height: 2.0)
            bottomLine.backgroundColor = self.textColor.cgColor
            self.layer.addSublayer(bottomLine)
        }
    }

}


class BorderLabel: UILabel {
    
    
    @IBInspectable var rightImage: UIImage? {
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
    
    @IBInspectable var borderLine: Bool = false {
        didSet {
            self.layer.borderWidth = 1.0
            self.layer.cornerRadius = 8
            self.layer.borderColor = UIColor.gray.cgColor
            self.textColor = UIColor.gray
        }
    }
    
    func updateUI() {
        
        if let image = rightImage {
            
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: rightImageWidth, height: rightImageHeight))
            imageView.image = image
            
            let view = UIView(frame: CGRect(x: (self.frame.size.width - 20), y: 0, width: 20, height: 20))
            view.addSubview(imageView)
            imageView.center = view.center
            self.addSubview(view)
            
        }else {
            
        }
        
        
       
        
    }


    
}
