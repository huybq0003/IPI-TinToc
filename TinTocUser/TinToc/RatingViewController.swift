//
//  RatingViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 7/4/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class RatingViewController: UIViewController{
    @IBOutlet weak var viewNote: UIView!
    @IBOutlet weak var imvAvatar: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imvRating: FloatRatingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imvAvatar.setShadowBorder()
        imvRating.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func abtnSend(_ sender: Any) {
        print(self.imvRating.rating)
    }
   
    @IBAction func abtnCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension RatingViewController: FloatRatingViewDelegate {
    func floatRatingView(_ ratingView: FloatRatingView, didUpdate rating: Float) {
        print(ratingView.rating)
    }
}
