//
//  MenuVC.swift
//  TinToc Shipper
//
//  Created by Quylk.uit on 7/3/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tbvMenu: UITableView!
    
    let itemsMenu: [String] = ["Menu1", "Menu2", "Menu3", "Menu4", "Menu5"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tbvMenu.isScrollEnabled = false
        tbvMenu.separatorStyle = .none
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = itemsMenu[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemsMenu[indexPath.row])
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let vc = indexPath.row == 0 ? appDelegate.vc1 : appDelegate.vc2
            appDelegate.sidePanelController?.selectedViewController = vc
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsMenu.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.tbvMenu.frame.height/8
    }
}

