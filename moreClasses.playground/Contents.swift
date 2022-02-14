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
    var isConvertible: Bool = false
    init(isElectric: Bool) {
        super.init(isElectric: isElectric)
    }
}

var teslaX = Car(isElectric: true, isConvertible: false)
