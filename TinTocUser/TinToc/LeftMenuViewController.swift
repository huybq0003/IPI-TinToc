//
//  LeftMenuViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/28/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
import SDWebImage
class LeftMenuViewController: BaseViewController {
   
    @IBOutlet weak var tbvMenu: UITableView!
    
    var mainVC : UIViewController!
    
    lazy var listItem = [[String : String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listItem = [["name":"Thông tin Shop","image":"ic_shopinfo"],["name":"Thu nhập","image":"ic_thunhap"],["name":"Ưu đãi","image":"ic_uudai"],["name":"Đánh giá","image":"ic_danhgia"],["name":"Hỗ Trợ","image":"ic_help"]]
        self.tbvMenu.isScrollEnabled = false
        self.tbvMenu.separatorStyle = .none
       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    
}



extension LeftMenuViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tbvMenu.frame.size.height / 8
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = mainStoryboard.instantiateViewController(withIdentifier: "ShopInfo_ViewController") as! ShopInfo_ViewController
            self.present(vc, animated: true, completion: nil)
        case 1:
            let vc = mainStoryboard.instantiateViewController(withIdentifier: "ThuNhap_ViewController") as! ThuNhap_ViewController
            self.present(vc, animated: true, completion: nil)
        case 3:
            let vc = mainStoryboard.instantiateViewController(withIdentifier: "RatingViewController") as! RatingViewController
            self.present(vc, animated: true, completion: nil)
        
            
        default:
            print("select cell")
        }
        
        
        tbvMenu.deselectRow(at: indexPath, animated: true)
        
        
    }
}

extension LeftMenuViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuCell = tbvMenu.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuCell
        menuCell.imvName.text = listItem[indexPath.row]["name"]
        menuCell.imvIcon.image = UIImage (named: listItem[indexPath.row]["image"]!)
        return menuCell
        
    }
}

class MenuCell:UITableViewCell {
    @IBOutlet weak var imvIcon: UIImageView!
    @IBOutlet weak var imvName: UILabel!
    
}
