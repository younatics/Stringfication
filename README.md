# Stringfication

[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-brightgreen.svg?style=flat)](https://www.swift.org/package-manager/)
[![CocoaPods](https://img.shields.io/cocoapods/v/Stringfication.svg?style=flat)](https://cocoapods.org/pods/Stringfication)
[![Platform](https://img.shields.io/badge/platform-iOS%2013.0%2B-lightgrey.svg?style=flat)](https://github.com/younatics/Stringfication/blob/master/Package.swift)
[![Swift 6.0](https://img.shields.io/badge/Swift-6.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/younatics/Stringfication/blob/master/LICENSE)

#### See [Objectification](https://github.com/younatics/Objectification) if you want to get objects where string is contained in object

## Updates
See [CHANGELOG](https://github.com/younatics/Stringfication/blob/master/CHANGELOG.md) for details

## Intoduction
🔨 Make all objects to String! This library will be useful when you develop search function :)

## Requirements

`Stringfication` requires Swift 6.0 and iOS 13.0 or later. It supports Swift Package Manager and CocoaPods.

## Installation

### Swift Package Manager

In Xcode, choose **File ▸ Add Package Dependencies…** and enter:

```
https://github.com/younatics/Stringfication.git
```

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/younatics/Stringfication.git", from: "2.0.0")
]
```

### CocoaPods

Stringfication is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Stringfication', '2.0.0'
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
// -> ["Developed", "by", "SeungyounYi", "1", "2", "3", "This", "is", "Stringfication", "Do", "what", "you", "want", "777", "99.99", "younatics"]
```

Get all 
```swift
print(model.stringfication.all())
// -> ["anyProperty", "arrayProperty", "intProperty", "floatProperty", "stringProperty", "Developed", "by", "SeungyounYi", "1", "2", "3", "This", "is", "Stringfication", "Do", "what", "you", "want", "777", "99.99", "younatics"]
```

## References
#### Please tell me or make pull request if you use this library in your application :) 

## Author
[younatics 🇰🇷](http://younatics.github.io)

## License
Stringfication is available under the MIT license. See the LICENSE file for more info.
