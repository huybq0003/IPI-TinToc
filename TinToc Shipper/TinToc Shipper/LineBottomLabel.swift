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
