//
//  ViewController.swift
//  StringficationDemo
//
//  Created by YiSeungyoun on 2017. 4. 22..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit

class YNModel: NSObject {
    var any: Any?
    var array: [String]?
    var msg: String?
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ynModel = YNModel()
        ynModel.any = "title string"
        ynModel.array = ["a","b","c"]
        ynModel.msg = "message"
        
        let ynMirror = YNMirror(reflecting: ynModel)
        print(ynMirror.properties())
        ynMirror.values()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

