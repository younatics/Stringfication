//
//  Stringfication.swift
//  Stringfication
//
//  Created by YiSeungyoun on 2017. 4. 22..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import Foundation

public class Stringfication: NSObject {
    var ynMirror: Mirror?
    
    public init(reflecting subject: Any) {
        self.ynMirror = Mirror(reflecting: subject)
    }
    
    open func properties() -> [String] {
        guard let _ynMirror = ynMirror else { return [String]() }
        return _ynMirror.children.flatMap { $0.label }
    }
    
    open func values()  {
        guard let _ynMirror = ynMirror else { return }
        for value in _ynMirror.children {
            let value = String(describing: value.value)
            print(value)
        }
        
        print(_ynMirror.displayStyle)
        print(_ynMirror.superclassMirror)
        print(_ynMirror.subjectType)
        
        //        return _ynMirror.children.flatMap { $0.value as [String] }
    }
    
    
}
