import UIKit

var greeting = "Hello, playground"

//Closures

//func greetUser() -> String {
//    "Hi"
//}

//greetUser()
//var greetCopy: () -> String = greetUser
//greetCopy()

let sayHello = { (name: String) -> String in
    "Hi \(name)"
}

let result = sayHello("Raghu")


let answer: (Int, Int) -> Int = { (a, b) in
    a + b
}

answer(5, 5)


func getUserData(name: String, bio: (String) -> String) {
    print("Hi \(name)")
    bio(name)
}

getUserData(name: "Raghu") { name in
    "my name is \(name)"
}


struct Bio {
    var name: String
    var age: Int
    var printBio = { (name: String, age: Int, location: String) -> String in
        "My name is \(name), I am \(age) years old. I am from \(location)"
    }
}

var myBio = Bio(name: "Raghu", age: 64) { name, age, location in
    return "My name is \(name), I am \(age) years old. I am from \(location)"
}

let bio = myBio.printBio
bio("Raghu", 64, "Chennai")

let sayHelloClosure: () -> Void = { print("Hello Closure!") }
sayHelloClosure()


let sayHelloClosureWithParams: (String) -> Void = { name in
    print("Hello \(name)")
}
sayHelloClosureWithParams("Raghu")
sayHelloClosureWithParams("Teju")


let sumClosure: (Int, Int) -> Int = { (a, b) in
    a + b
}
let resultFromClosure = sumClosure(2, 3)
print(resultFromClosure)



func sayHelloFunc(to name: String = "Teju", finallySayIt: (String) -> ()) {
    let newName = name.uppercased()
    finallySayIt(newName)
}
sayHelloFunc(to: "Raghu", finallySayIt: { name in
    print("Hello \(name)")
})

sayHelloFunc(to: "Teju") { name in
    print("Hello \(name)")
}

sayHelloFunc { name in
    print("Hello \(name)")
}


func sayIt() -> (String) -> Void {
    return { name in
        print("Hello \(name)")
    }
}

let greetings = sayIt()
greetings("Subha")


var team = ["Raja", "Guna", "Selva", "Raghu"]
team.sorted()

let captainFirst = team.sorted { name1, name2 in
    if name1 == "Raja" {
        return true
    } else if name2 == "Raja" {
        return false
    }
    return name1 < name2
}

print(captainFirst)

let sayHello1 = { (name: String) -> String in
    "Hi \(name)"
}
sayHello1("Raghu")

func greetUser() {
    print("hi there")
}
var greetCopy = greetUser


var flyDrone = { (hasPermit: Bool) -> Bool in
    if hasPermit {
        print("Let's find somewhere safe")
        return true
    }
    print("That's against the law.")
    return false
}
flyDrone(true)


// Normal Closure
//var rOnly = team.filter({ name in
//    name.hasPrefix("R")
//})
//print(rOnly)


//Trailing Closure
//var rOnly = team.filter { name in
//    name.hasPrefix("R")
//}
//print(rOnly)


//Short hand syntax
var rOnly = team.filter { $0.hasPrefix("R") }
print(rOnly)


//Normal Closure
//let uppercaseTeam = team.map({ name in
//    name.uppercased()
//})
//print(uppercaseTeam)


//Trailing Closure
//let uppercaseTeam = team.map { name in
//    name.uppercased()
//}
//print(uppercaseTeam)


//Short-hand syntax
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)


func animate(duration: Int, animations: () -> Void) {
    print("Starting a \(duration) second animation")
    animations()
}

animate(duration: 3, animations: {
    print("Fade out an image")
})

animate(duration: 2) {
    print("Fade in an image")
}


func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = Array<Int>()
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

makeArray(size: 10) {
    Int.random(in: 1...10)
}


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("Starting the first work")
    first()
    print("Starting the second work")
    second()
    print("Starting the third work")
    third()
    print("Work done!")
}

doImportantWork {
    print("First work completed")
} second: {
    print("Second work completed")
} third: {
    print("Third work completed")
}

//let luckyNumbers = [7, 14, 38, 21, 16, 15, 12, 33, 31, 49]
//
//let evenNumbers = luckyNumbers.filter { number in
//
//}

