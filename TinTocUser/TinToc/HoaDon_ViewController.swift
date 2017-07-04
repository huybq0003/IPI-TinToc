//
//  HoaDon_ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 7/3/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class HoaDon_ViewController:BaseViewController  {

    @IBOutlet weak var lblGiaTriHangHoa: UILabel!
    @IBOutlet weak var lblPhiShip: UILabel!
    @IBOutlet weak var lblTong: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func abtnHuy(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func abtnXacnhan(_ sender: Any) {
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "MaDonHang_ViewController") as! MaDonHang_ViewController
        self.present(vc, animated: true, completion: nil)
    }
    
}
