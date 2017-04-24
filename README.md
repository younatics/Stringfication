# Stringfication

[![Version](https://img.shields.io/cocoapods/v/Stringfication.svg?style=flat)](http://cocoapods.org/pods/Stringfication)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/younatics/Stringfication/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/younatics/Stringfication.svg?branch=master)](https://travis-ci.org/younatics/Stringfication)
[![Platform](https://img.shields.io/cocoapods/p/Stringfication.svg?style=flat)](http://cocoapods.org/pods/Stringfication)
[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)

#### See [Objectification](https://github.com/younatics/Objectification) if you want to get objects where string is contained in object

## Updates
See [CHANGELOG](https://github.com/younatics/Stringfication/blob/master/CHANGELOG.md) for details

## Intoduction
🔨 Make all objects to String! This library will be useful when you develop search function :)

## Requirements

`Stringfication` is written in Swift 3. Compatible with iOS 8.0+

## Installation

### Cocoapods

Stringfication is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Stringfication'
```
### Carthage
```
github "younatics/Stringfication"
```

## Usage
Import `Stringfication` and inherit `Stringfication` what you want to make object to string
```swift
import Stringfication

struct Model: Stringfication {
    var anyProperty: Any?
    var arrayProperty: [[String]]?
    var intProperty: Int?
    var floatProperty: Float?
    var stringProperty: String?
}
```

I made some data sample in `Model`
```swift
var model = Model()
model.anyProperty = [["Developed","by","SeungyounYi"],[1,2,3]]
model.arrayProperty = [["This","is","Stringfication"],["Do","what","you","want"]]
model.intProperty = 777
model.floatProperty = 99.99
model.stringProperty = "younatics"
```

Get properties 
```swift
print(model.stringfication.properties())
// -> ["anyProperty", "arrayProperty", "intProperty", "floatProperty", "stringProperty"]
```

Get values 
```swift
print(model.stringfication.values())
// -> ["Developed", "by", "SeungyounYi", "1", "2", "3", "This", "is", "Stringfication", "Do", "what", "you", "want", "777", "99.9899979", "younatics"]
```

Get all 
```swift
print(model.stringfication.all())
// -> ["anyProperty", "arrayProperty", "intProperty", "floatProperty", "stringProperty", "Developed", "by", "SeungyounYi", "1", "2", "3", "This", "is", "Stringfication", "Do", "what", "you", "want", "777", "99.9899979", "younatics"]
```

## References
#### Please tell me or make pull request if you use this library in your application :) 

## Author
[younatics 🇰🇷](http://younatics.github.io)

## License
Stringfication is available under the MIT license. See the LICENSE file for more info.


