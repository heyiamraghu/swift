import UIKit

var greeting = "Hello, playground"


let volumeInLiter = Measurement(value: 1.0, unit: UnitVolume.liters)

let degrees = Measurement(value: 49.0, unit: UnitTemperature.celsius)
let converted = degrees.converted(to: UnitTemperature.fahrenheit)
