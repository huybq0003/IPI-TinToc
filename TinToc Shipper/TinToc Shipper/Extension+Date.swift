//
//  Extension+Date.swift
//  HTB
//
//  Created by Quylk.uit on 6/6/17.
//  Copyright © 2017 phuc.huynh. All rights reserved.
//

import Foundation

extension Date {
    var formatedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-YYYY"
        return formatter.string(from: self)
    }
    var formatedDateSecondStyle: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd"
        return formatter.string(from: self)
    }
    var formatedTime: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: self)
    }
    var formatedDateSpecial: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYYMMddHHmm0"
        return formatter.string(from: self)
    }
    var formatedDateCheck: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        return formatter.string(from: self)
    }
    var formatedMMyyyy: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM YYYY"
        return formatter.string(from: self)
    }
    var formatedyyyyMM: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM"
        return formatter.string(from: self)
    }

}
