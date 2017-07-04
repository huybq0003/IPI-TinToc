

import UIKit
import Alamofire
import Foundation
class DataConnect: NSObject {
    static var mainURL = ""
    static let registerURL = mainURL + "/user/register"
 
    typealias onSuccess = (_ result : AnyObject?)->()
    typealias onFailed = (_ error: AnyObject) -> ()
    
        class func convertCoordinatesToAddress(_ url : String,onsuccess : @escaping onSuccess, onFailure : @escaping onFailed) {
            Alamofire.request(url).responseJSON { response in
                switch response.result {
                case .success:
                    onsuccess(response.result.value! as AnyObject?)
                case .failure(let error):
                    print(error)
                    onFailure(0 as AnyObject)
                }
            }
    
        }
    



}

    







