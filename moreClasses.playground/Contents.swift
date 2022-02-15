import UIKit

var greeting = "Hello, playground"


class Student {
    var name: String
    
    init(studentName: String) {
        self.name = studentName
    }
}

let raghu = Student(studentName: "Raghu")
raghu.name
let nandy = Student(studentName: "nandy")
raghu.name
nandy.name




class Employee {
    
    var name: String
    var hours: Int
    
    func printSummary() {
        print("Hey, I am \(name) and I work \(hours) hours a day.")
    }
    
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
}


class Developer: Employee {
    
    func work() {
        print("Hey, I am \(name), I am a developer and I work \(hours) hours a day.")
    }
    
    override func printSummary() {
        print("Hey, I am \(name) and I work \(hours) hours a day and I spend rest of the time in meetings.")
    }
    
}


class Manager: Employee {
    func work() {
        print("Hey, I am \(name), I am a Manager and I spend \(hours) hours a day in meetings.")
    }
}


let Raghu = Manager(name: "Raghu", hours: 9)
Raghu.printSummary()
Raghu.work()

let Nandy = Developer(name: "Nandy", hours: 8)
Nandy.printSummary()
Nandy.work()


class Vehicle {
    var isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    var isConvertible: Bool
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

var teslaX = Car(isElectric: true, isConvertible: false)


class User {
    var username: String
    
    init(username: String) {
        self.username = username
        print("User: \(username) - I am alive!")
    }
    
    deinit {
        print("User: \(username) - I am dead")
    }
}

//var user1 = User()
//var user2 = user1
//user2.username = "unknown"
//
//print(user1.username)
//print(user2.username)

let users = ["kane", "liam", "eoin", "wade"]

for user in users {
    let userFromClass = User(username: user)
    print("User: \(userFromClass.username) - I am in control!")
}


//Optionals

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]
print(peachOpposite)


if let marioOpposite = opposites["Mario"] {
    print(marioOpposite)
}


func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing number")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: nil)
printSquare(of: 5)
printSquare(of: nil)

let teams = ["CSK", "KKR", "DC", "SRH"]
let random = teams.randomElement() ?? "Empty Array"

let actorsAndMovies = [
    "Bigil": "Vijay",
    "Basha": "Rajini",
    "VTV": "Simbu"
]

let hero = actorsAndMovies["Muthu"] ?? "No such movie"
