//
//  ViewController.swift
//  AFSample
//
//  Created by Jack Ngai on 6/19/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://codewithchris.com/code/afsample.json").responseObject { (response: DataResponse<JSONResponse>) in
            let JSON = response.result.value
            print(JSON?.firstkey ?? "firstkey is nil")
            print(JSON?.secondkey ?? "secondkey is nil")
            
        }            // Check if the result has a value
        
        //            if let JSON = response.result.value as? [String:Any]{
        //                print(JSON["firstkey"] as! String)
        //                print(JSON["secondkey"] as! NSArray)
        //            }
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class JSONResponse: Mappable {
    var firstkey: String?
    var secondkey: [String]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        firstkey <- map["firstkey"]
        secondkey <- map["secondkey"]
    }
}





