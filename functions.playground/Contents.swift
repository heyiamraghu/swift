import UIKit

var greeting = "Hello, playground"

func showWelcome() {
    let message = """
Welcome to my app!
By default this prints out a conversation
chart from centimeters to inches, but you
can also set a custom range if you want.
"""
    print(message)
}

showWelcome() //Function's call site


func printTimesTables(number: Int, endNumber: Int) {
    for i in 1...endNumber {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, endNumber: 20)



//Return values from Functions


let root = sqrt(169)
print(root)


func rollDice() -> Int {
    return Int.random(in: 1...6)
}
 
let diceResult = rollDice()
print(diceResult)


func matchingStrings(firstString: String, secondString: String) -> Bool {
    if firstString.sorted() == secondString.sorted() {
        return true
    } else {
        return false
    }
}

let result = matchingStrings(firstString: "abc", secondString: "cab")


func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

let result1 = areLettersIdentical(string1: "abc", string2: "cab")


//Returning multiple values from Functions

func getUserInfo() -> (firstName: String, lastName: String) {
    return (firstName: "Paul", lastName: "Hudson")
}

let (firstName, lastName) = getUserInfo()
print(firstName)





func userBio(firstName: String, lastName: String, age: Int, location: String) -> (firstName: String, lastName: String, age: Int, location: String) {
    return (firstName, lastName, age, location)
}

let (first, _, _, _) = userBio(firstName: "Raghu", lastName: "Sampath", age: 54, location: "Chennai")
print(first)


//Internal and External names for Function Parameters

func isUpperCase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let result2 = isUpperCase(string)


func printTimesTables(for number: Int) {
    for i in 1...10 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)


func printTimesTables1(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables1(for: 9)
printTimesTables1(for: 9, end: 25)


//Handling errors in Functions

enum PasswordError: Error {
    case short
    case obvious
}

func checkPasswordStrength(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good!"
    } else {
        return "Strong Password!"
    }
}


let passwordString = "12ugkljkmk5"

do {
    let result = try checkPasswordStrength(passwordString)
    print("Feedback on your password: \(result)")
} catch PasswordError.short {
    print("Your password is too short")
} catch PasswordError.obvious {
    print("Your password is predictable")
} catch {
    print("There was an error")
}
