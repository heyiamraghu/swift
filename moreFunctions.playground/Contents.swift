import UIKit
import Darwin

var greeting = "Hello, playground"

func showWelcome() {
    let message = """
Welcome to my app!
By default this prints out a conversion chart from centimeters to inches,
but you can also set a custom range if you want.
"""
    print(message)
}

showWelcome()


let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}


let roll = Int.random(in: 1...30)


func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 10)


func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 10, end: 20)


let root = sqrt(169)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
let result1 = rollDice()

func stringMatch(first: String, second: String) -> Bool {
    if first.sorted() == second.sorted() {
        return true
    } else {
        return false
    }
}

let doesStringsMatch = stringMatch(first: "ABC", second: "CBA")

func areWordsIdentical(first: String, second: String) -> Bool {
    first.sorted() == second.sorted()
}

areWordsIdentical(first: "CAT", second: "ATC")


func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Raghu", lastName: "Sampath")
}

let (firstName, lastName) = getUser()
print(firstName)


func getUserWithAge() -> (firstName: String, lastName: String, age: Int, location: String) {
    ("Raghu", "Sampath", 65, "Chennai")
}

let (first, last, _, location) = getUserWithAge()
print("My name is \(first) \(last) and I am from \(location)")



func printTimesTables(for number: Int, endPoint: Int = 12) {
    for i in 1...endPoint {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, endPoint: 15)
printTimesTables(for: 10)


enum PasswordError: Error {
    case short
    case obvious
}
