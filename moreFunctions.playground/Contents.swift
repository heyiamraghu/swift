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

//func checkPassword(_ password: String) throws -> String {
//    switch password {
//    case password.count < 5:
//        throw PasswordError.short
//    case password == "12345":
//        throw PasswordError.obvious
//    case password.count < 8:
//        return "OK"
//    case password.count < 10:
//        return "Good"
//    default:
//        return "Excellent"
//    }
//}


func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let password = "1234"

do {
    let result = try checkPassword(password)
    print("Feedback on your password: \(result)")
} catch PasswordError.short {
    print("Your password is too short")
} catch PasswordError.obvious {
    print("Your password is predictable")
} catch {
    print("Error with your password selection")
}


//Closures

func greetUser(name: String) {
    print("Hi \(name)")
}

var greetCopy = greetUser
greetCopy("raghu")


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

var userDataCopy = getUserData
print(userDataCopy(1989))


let sayHello = { (name: String) -> String in
    return "hi \(name)"
}

sayHello("raghu")


let team = ["Raja", "Raghu", "Guna", "Vicky", "Selvam", "Dhinesh"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Raja" {
        return true
    } else if name2 == "Raja" {
        return false
    }
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)


let captainFirstWithClosure = team.sorted { name1, name2 in
    if name1 == "Raja" {
        return true
    } else if name2 == "Raja" {
        return false
    }
    return name1 < name2
}
print(captainFirstWithClosure)



//Closure - one parameter, returns nothing

let payment = { (user: String) in
    print("Hi \(user)")
}

//Closure - one parameter, returns a value

let payment1 = { (user: String) -> String in
    return "hi \(user)"
}

//Closure - no parameter, returns a value

let payment2 = { () -> String in
    return "hi"
}


let rOnly = team.filter { teamMember in
    teamMember.hasPrefix("R")
}
print(rOnly)


let uppercaseTeam = team.map { teamMember in
    teamMember.uppercased()
}



func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

makeArray(size: 5) {
    Int.random(in: 1...10)
}

func generateNumber() -> Int {
    Int.random(in: 1...40)
}

makeArray(size: 10, using: generateNumber)



func doSomething(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start the first task")
    first()
    print("About to start the second task")
    second()
    print("About to start the third task")
    third()
    print("Done!")
}

doSomething {
    print("First task is completed")
} second: {
    print("Second task is completed")
} third: {
    print("Third task is completed")
}

