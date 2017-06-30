//
//  ThuNhap_ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/29/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class ThuNhap_ViewController: BaseViewController {

    @IBOutlet weak var lblTungay: UILabel!
    @IBOutlet weak var lblDenngay: UILabel!
    @IBOutlet weak var lblDaThanhToan: LineBottomLabel!
    @IBOutlet weak var lblChuaThanhToan: LineBottomLabel!
    @IBOutlet weak var lblSLDonHang: UILabel!
    @IBOutlet weak var lblPhiShip: UILabel!
    @IBOutlet weak var lblTongCong: UILabel!
    var flagKeyboard = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func abtnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func abtnConfirm(_ sender: Any) {
        
    }
    

}
