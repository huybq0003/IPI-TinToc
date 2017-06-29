//
//  Config.swift
//  Around
//
//  Created by phuc.huynh on 12/12/16.
//  Copyright © 2016 phuc.huynh. All rights reserved.
//

import Foundation
import ObjectMapper
class Config : NSObject
{
    
    var ping_time : Int?
    var request_shipper_timeout : Int?
    var response_shipper_timeout : Int?
    var draw_shipper_position_time_in_journey:Int?
    var draw_shipper_position_time_out_journey:Int?
    var shipper_update_postion_time_in_journey:Int?
    class var sharedInstance: Config {
        struct Static {
            static let instance = Config()
        }
        return Static.instance
    }
    
    override init() {
        super.init()
        
    }
    
    
    
}
class ConfigIP : NSObject
{
    var version : Int?
    var restful_ip : String?
    var restful_port : Int?
    
    var smartfox_ip : String?
    var smartfox_port : Int?
    var zone_ = "AroundAppZone"
    var useBlueBox = true
    var httpPort = 8080
    var httpPollSpeed = 750
    class var sharedInstance: ConfigIP {
        struct Static {
            static let instance = ConfigIP()
        }
        return Static.instance
    }
    override init() {
        super.init()
        
    }
}





class DataConfig : Mappable{
    var error: Errorr?
    var update: Update?
    var maintenance: Maintenance?
    var google_key : GoogleKey?
    var employee : EmployeeTime?
    required init?(map: Map) {
        
    }
    func mapping(map: Map) {
        error    <- map["error"]
        update         <- map["update"]
        maintenance    <- map["maintenance"]
        google_key    <- map["google_key"]
        employee    <- map["employee"]
    }
}



class Errorr : Mappable{
    var status: Int?
    var version: Int?
    var content: [ContentError]?
    var vn_content: [ContentError]?
    required init?(map: Map) {
    }
    func mapping(map: Map) {
        status    <- map["status"]
        version         <- map["version"]
        content    <- map["content"]
        vn_content    <- map["vn_content"]
    }
}


class Update : Mappable{
    var status: Int?
    var url: String?
    var message: String?
    var vn_message : String?
    required init?(map: Map) {
    }
    func mapping(map: Map) {
        status    <- map["status"]
        url         <- map["url"]
        message    <- map["message"]
        vn_message    <- map["vn_message"]
    }
}

class Maintenance : Mappable{
    var status: Int?
    var message: String?
    var vn_message : String?
    required init?(map: Map) {
    }
    func mapping(map: Map) {
        status    <- map["status"]
        
        message    <- map["message"]
        vn_message    <- map["vn_message"]
    }
}

class ContentError : Mappable{
    var id: Int?
    var description: String?
    required init?(map: Map) {
    }
    func mapping(map: Map) {
        id    <- map["id"]
        description         <- map["description"]
    }
}

class GoogleKey : Mappable{
    var ios_key: String?
    required init?(map: Map) {
    }
    func mapping(map: Map) {
        ios_key         <- map["ios_key"]
    }
}
class EmployeeTime : Mappable{
    var send_position_time: Int?
    required init?(map: Map) {
    }
    func mapping(map: Map) {
        send_position_time     <- map["send_position_time"]
    }
}
