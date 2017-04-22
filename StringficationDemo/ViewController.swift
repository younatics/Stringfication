//
//  ViewController.swift
//  StringficationDemo
//
//  Created by YiSeungyoun on 2017. 4. 22..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit
import Stringfication

struct Model: Stringfication {
    var anyProperty: Any?
    var arrayProperty: [[String]]?
    var intProperty: Int?
    var floatProperty: Float?
    var stringProperty: String?
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var model = Model()
        model.anyProperty = [["Developed","by","SeungyounYi"],[1,2,3]]
        model.arrayProperty = [["This","is","Stringfication"],["Do","what","you","want"]]
        model.intProperty = 777
        model.floatProperty = 99.99
        model.stringProperty = "younatics"
        
        print(model.stringfication.properties())
        print(model.stringfication.values())
        print(model.stringfication.all())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

