//
//  function.swift
//  TinToc Shipper
//
//  Created by Quylk.uit on 6/30/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import Foundation
import ARSLineProgress
import UIKit

func showActivityIndicator(active: Bool, view: UIView) {
    let blurEffect = UIBlurEffect(style: .light)
    let blurEffectView = UIVisualEffectView(effect: blurEffect)
    blurEffectView.tag = 987
    if !active {
        view.viewWithTag(987)?.removeFromSuperview()
        ARSLineProgress.hide()
    } else {
        blurEffectView.frame = view.bounds
        view.bringSubview(toFront: blurEffectView)
        view.addSubview(blurEffectView)
        
        ARSLineProgressConfiguration.backgroundViewColor = UIColor.black.cgColor
        ARSLineProgressConfiguration.backgroundViewStyle = .blur
        ARSLineProgressConfiguration.backgroundViewCornerRadius = 25.0
        ARSLineProgressConfiguration.backgroundViewDismissTransformScale = 0
        ARSLineProgress.show()
    }
}
