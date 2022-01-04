import UIKit

var greeting = "Hello, playground"

class GameClass {
    var score = 0 {
        didSet {
            print("The score is now \(score)")
        }
    }
}

let newGame = GameClass()
newGame.score += 15


struct GameStruct {
    var score = 0 {
        didSet {
            print("The score is now \(score)")
        }
    }
}

//let newGame1 = GameStruct()
var newGame1 = GameStruct()
newGame1.score += 10


class ThemePark {
    var entryPrice: Int
    var rides: [String]
    init(rides: [String]) {
        self.rides = rides
        self.entryPrice = rides.count * 2
    }
}


class Attendee {
    var badgeNumber = 0
    var name = "blank"
    var company = "blank"
//    init(badge: Int, name: String, company: String) {
//        self.badgeNumber = badge
//        self.name = name
////        self.company = company
//    }
}

let attendee = Attendee()


class Employee {
    var workingHours: Int
    init(hours: Int) {
        self.workingHours = hours
    }
    
    func printSummary() {
        print("I work \(workingHours) hours a day")
    }
}


class Developer: Employee {
    func work() {
        print("I am a developer and I write code for \(workingHours) hours a day")
    }
    
    override func printSummary() {
        print("I am a developer, I work \(workingHours) hours a day")
    }
}


class Manager: Employee {
    func work() {
        print("I am a manager and I spend \(workingHours) hours a day in meetings")
    }
    
    func printSummary1() -> String {
        "I am a manager, I work \(workingHours) hours a day"
    }
}

let raghu = Manager(hours: 8)
raghu.work()
let result = raghu.printSummary1()

let teju = Developer(hours: 8)
teju.work()
teju.printSummary()


class Vehicle {
    var isElectric = true
}


class Car: Vehicle {
    var isConvertible = false
}

//let teslaX = Car(isConvertible: false)
//let swift = Car(isConvertible: false)

let teslaX = Car()
teslaX.isElectric = false


struct User {
    var username = "Unknown"
}

let user1 = User()
user1.username
var user2 = user1
user2.username = "raghu"

print(user1.username)
print(user2.username)



struct ClassRoom {
    var newStudentName: String
    var classStrength: Int
    mutating func newStudent(name: String) {
        print("\(name) has joined the class")
        classStrength += 1
    }
}


var classFive = ClassRoom(newStudentName: "Raghu", classStrength: 20)
classFive.newStudent(name: "Teju")
