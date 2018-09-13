//
//  ViewController.swift
//  WebServiceManagerClass
//
//  Created by Dilip on 13/09/18.

import UIKit
import CoreData

class ViewController: UIViewController{
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.purple
        
        postMethod()
    }
    
    func postMethod(){
        
        // below is with other paramters
        //let params = "home_page=" + "1"
        
        
        var params = "username=" + "test3"
        params += "&password=" + "qwe"
        params += "&login=" + "1"
        
        WebRequester.shared.requestJSON(urlStr: "https://abcabc.com/mobile_app/iosapp.php", parameter: params){(result, error) in
            
            DispatchQueue.main.async {
                print(result as Any)
                
                // code is for other parameter JSON Response
                
                //                let status = result?["status"] as? String
                //                print(status as Any)
                //
                //
                //
                //
                //                guard let jsonArray = result?["result"] as? [[String:AnyObject]] else{ return }
                //
                //                for value in jsonArray{
                //
                //                    let image = value["image"] as? String
                //                    print(image as Any)
                //                }
                
                let email = result?["Email"] as? String
                print(email as Any)
                
                
                if let role_User = result?["Role"] as? NSArray{
                    print(role_User as Any)
                }
            }
        }
    }

    
}



