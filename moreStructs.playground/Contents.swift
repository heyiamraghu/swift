import UIKit

var greeting = "Hello, playground"

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
print(red.title)
red.printSummary()


struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I am going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var raghu = Employee(name: "Raghu", vacationRemaining: 32)
raghu.takeVacation(days: 12)


struct Employee1 {
    let name: String
    var vacationAllocated: Int = 32
    var vacationTaken: Int = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var kane = Employee1(name: "Kane")
kane.vacationTaken
kane.vacationAllocated
kane.vacationRemaining

kane.vacationTaken += 4
kane.vacationRemaining
kane.vacationTaken


struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score) from \(oldValue)")
        }
    }
}

var game = Game()
game.score += 2
game.score += 6


struct Player {
    let name: String
    let rank: Int
    let country: String
    
    init(playerName: String, playerRank: Int, playerCountry: String) {
        self.name = playerName
        self.rank = playerRank
        self.country = "India"
    }
}


let guna = Player(playerName: "Guna", playerRank: 99, playerCountry: "Canada")


struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
        print("\(amount) is deposited successfully. You have \(funds) dollars in your account.")
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if amount < funds {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}


var account = BankAccount()
account.deposit(amount: 200)

let success = account.withdraw(amount: 100)
if success {
    print("Amount withdrawn successfully")
} else {
    print("There was an issue!")
}


account.funds


struct School {
    static var studentCount = 0
    static func add(studentName: String) {
        print("\(studentName) is added to the class")
        studentCount += 1
    }
}

School.studentCount
School.add(studentName: "Raghu")
