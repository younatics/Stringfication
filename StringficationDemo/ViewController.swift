//
//  ViewController.swift
//  StringficationDemo
//
//  Created by YiSeungyoun on 2017. 4. 22..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit
import Stringfication

class YNModel: Stringfication {
    var any: Any?
    var array: [[String]]?
    var msg: Int?
}


class ViewController: UIViewController {
    var msg: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ynModel = YNModel()
        ynModel.any = "title string"
        ynModel.array = [["a","b","c"],["1","2","3"]]
        ynModel.msg = 777
        
        print(ynModel.stringfication.properties())
        print(ynModel.stringfication.values())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

