//
//  ViewController.swift
//  AFSample
//
//  Created by Jack Ngai on 6/19/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://codewithchris.com/code/afsample.json").responseJSON { (response) in
            
            // Check if the result has a value
            
            if let JSON = response.result.value as? [String:Any]{
                print(JSON["firstkey"] as! String)
                print(JSON["secondkey"] as! NSArray)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

