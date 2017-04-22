//
//  Stringfication.swift
//  Stringfication
//
//  Created by YiSeungyoun on 2017. 4. 22..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import Foundation

public protocol Stringfication { }

public extension Stringfication {
    public var stringfication: Mirror {
        return Mirror(reflecting: self)
    }
}

public extension Mirror {
    public func properties() -> [String] {
        return self.children.flatMap { $0.label }
    }
    
    public func values() -> [String] {
        var values = [String]()
        for value in self.children {
            values = values + checkArray(object:value.value)
        }
        
        return values
    }
    
    public func all() -> [String] {
        return self.children.flatMap { $0.label } + values()
    }
    
    private func checkArray(object: Any) -> [String] {
        var values = [String]()

        if let valueArray = object as? Array<Any> {
            for arrayValue in valueArray {
                values = values + checkArray(object: arrayValue)
            }
        } else {
            let objectString = String(describing: object)
            if objectString != "nil" {
                values.append(convertOptional(string: objectString))
            }
        }
        return values
    }
    
    private func convertOptional(string: String) -> String {
        if string.hasPrefix("Optional(") && string.hasSuffix(")") {
            let nonOptionalString = string.substring(10..<string.characters.count-2)
            
            if nonOptionalString.isInt || nonOptionalString.isDouble || nonOptionalString.isFloat {
                return string.substring(9..<string.characters.count-1)
            } else {
                return nonOptionalString
            }
        }
        
        return string
    }
}

private extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
    
    var isDouble: Bool {
        return Double(self) != nil
    }
    
    var isFloat: Bool {
        return Float(self) != nil
    }
    
    func substring(_ r: Range<Int>) -> String {
        let fromIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
        let toIndex = self.index(self.startIndex, offsetBy: r.upperBound)
        return self.substring(with: Range<String.Index>(uncheckedBounds: (lower: fromIndex, upper: toIndex)))
    }
    
}
