//
//  ViewController.swift
//  StringficationDemo
//
//  Created by YiSeungyoun on 2017. 4. 22..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit
import Stringfication

class Model: Stringfication {
    var anyProperty: Any?
    var arrayProperty: [[String]]?
    var intProperty: Int?
    var floatProperty: Float?
    var stringProperty: String?
}


class ViewController: UIViewController {
    var msg: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let model = Model()
        model.anyProperty = [["This","is","Stringfication"],[1,2,3]]
        model.arrayProperty = [["This","is","Stringfication"],["Do","what","you","want"]]
        model.intProperty = 777
        model.stringProperty = "younatics"
        
        print(model.stringfication.properties())
        print(model.stringfication.values())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

