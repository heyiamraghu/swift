import UIKit

var greeting = "Hello, playground"

let file = "swift.png"
print(file.hasSuffix(".png"))

let score = 130
print(score.isMultiple(of: 5))

var isAuthenticated = true
isAuthenticated = !isAuthenticated //flipping the boolean
print(isAuthenticated)
isAuthenticated.toggle()


let name = "Taylor"
let age = 26
let message = "Hey, I am \(name) and I'm \(age) years old."
print(message)


print("5 x 5 is \(5 * 5)")


let tempInCelsius: Double = 29
var tempInFahrenheit: Double

tempInFahrenheit = ((tempInCelsius * 9) / 5) + 32

print("Today's temp is \(tempInCelsius)°C, which is \(tempInFahrenheit)°F")
