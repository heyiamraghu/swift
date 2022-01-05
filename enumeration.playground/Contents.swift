import UIKit

var greeting = "Hello, playground"

enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

TextAlignment.justify.rawValue
TextAlignment.right.rawValue
TextAlignment.left.rawValue
TextAlignment.center.rawValue

var alignment: TextAlignment = .center
alignment = .right
alignment = .justify

switch alignment {
case .center:
    print("Center Aligned")
case .left:
    print("Left Aligned")
case .right:
    print("Right Aligned")
case .justify:
    print("Justified")
}


let myRawValue = 60
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("Successfully created the alingment '\(myAlignment)' from the raw value \(myRawValue)")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}

let tlRaw = TextAlignment(rawValue: 20)!
print(tlRaw)




enum ProgrammingLanguages: String {
    case swift = "swift"
    case objectivec = "objective-c"
    case c = "c"
    case cpp = "c++"
    case java = "java"
}

let myFavouriteLanguage = ProgrammingLanguages.swift
print("My favourite programming language is \(myFavouriteLanguage.rawValue)")


enum iOSFrameworks: String {
    case UIKit
    case SwiftUI
    case CoreData
    case ARKit
    case CoreGraphics
}

let myFavouriteFramework = iOSFrameworks.SwiftUI
myFavouriteFramework.rawValue



enum LightBulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = LightBulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)°F")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)°F")





enum ShapeDimensions {
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)

print("Square shape's area is \(squareShape.area())")
print("Rectangle's area is \(rectShape.area())")
