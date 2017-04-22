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
            if let valueArray = value.value as? Array<Any> {
                for arrayValue in valueArray {
                    values.append(convertOptional(string: String(describing: arrayValue)))
                }
            } else {
                values.append(convertOptional(string: String(describing: value.value)))
            }
        }
        
        return values
    }
    
    private func convertOptional(string: String) -> String {
        if string.hasPrefix("Optional(") && string.hasSuffix(")") {
            return string.substring(10..<string.characters.count-2)
        }
        
        return string
    }
}

private extension String {
    func substring(_ r: Range<Int>) -> String {
        let fromIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
        let toIndex = self.index(self.startIndex, offsetBy: r.upperBound)
        return self.substring(with: Range<String.Index>(uncheckedBounds: (lower: fromIndex, upper: toIndex)))
    }
    
}
