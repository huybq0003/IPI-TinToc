//
//  ViewController.swift
//  TinToc
//
//  Created by Shin Hyuk on 6/26/17.
//  Copyright © 2017 HuyBui. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {

    @IBOutlet weak var lblGioHanhChinh: UILabel!
    @IBOutlet weak var lblNgoaiGio: UILabel!
    @IBOutlet weak var txtSearch: UITextFieldLoginX!
    var datePickerView: UIDatePicker!
    var timePickerView: UIDatePicker!
    var timeFrom:String?
    var timeTo:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        setNavigationBarItem()
        createDatePicker()
        
    }
    
    func createDatePicker() {
        datePickerView = UIDatePicker()
        datePickerView.datePickerMode = .date
        datePickerView.addTarget(self, action: #selector(handleDatePicker), for: .valueChanged)
        datePickerView.locale = NSLocale(localeIdentifier: "en_GB") as Locale
    }
    
    func createTimePicker() {
        timePickerView = UIDatePicker()
        timePickerView.datePickerMode = .time
        timePickerView.addTarget(self, action: #selector(handleDatePicker), for: .valueChanged)
        datePickerView.locale = NSLocale(localeIdentifier: "en_GB") as Locale
    }
    
    func handleDatePicker(sender: UIDatePicker) {
        
//        if txtTuNgay.isEditing {
//            txtTuNgay.text = datePickerView.date.formatedDate
//        } else if txtDenNgay.isEditing {
//            txtDenNgay.text = datePickerView.date.formatedDate
//        } else {
//            txtGioVaoTre.text = timePickerView.date.formatedTime
//        }
//        
//        
//        let timeFromArray = txtTuNgay.text?.components(separatedBy: "-")
//        let timeToArray = txtDenNgay.text?.components(separatedBy: "-")
//        timeFrom = "\(timeFromArray![2])-\(timeFromArray![1])-\(timeFromArray![0]) \(txtGioVaoTre.text!):00"
//        timeTo = "\(timeToArray![2])-\(timeToArray![1])-\(timeToArray![0]) \(txtGioVaoTre.text!):00"
//        print(timeFrom!)
//        print(timeTo!)
        
    }

    @IBAction func abtnChooseStatus(_ sender: Any) {
        
    }
    @IBAction func abtnAddNewOrder(_ sender: Any) {
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "NewOrder_ViewController") as! NewOrder_ViewController
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func abtnFilter(_ sender: Any) {
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "BoLoc_MainShop_ViewController") as! BoLoc_MainShop_ViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    
}

