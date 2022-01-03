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
red.title
red.printSummary()

let wings: Album = Album(title: "Wings", artist: "BTS", year: 2016)
wings.artist
wings.printSummary()


struct Closure {
    var sampleClosure: () -> Void
}

var testClosure = Closure {
    print("This is a closure from inside a struct")
}


struct Employee {
    let name: String
    var vacationDays = 32
    
    mutating func takeVacation(days: Int) {
        if vacationDays > days {
            print("Your vacation for \(days) days is approved! And, here's your remaining vacation days \(vacationDays - days)")
            vacationDays -= days
        } else {
            print("You do not have enough vacation days. You currently have \(vacationDays) vacation days")
        }
    }
}

var archer = Employee(name: "Jofra Archer")
archer.vacationDays
archer.takeVacation(days: 12)
archer.takeVacation(days: 21)


let kane = Employee(name: "Kane Williamson")
kane.vacationDays
//kane.takeVacation(days: 10)


struct Game {
    var score: Int = 0 {
        didSet {
            print("Your score is now \(score). It was previously \(oldValue)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 12


struct Player {
    var name: String
    var score: Int
    
    init(name: String) {
        //self.score = score
        self.name = name
        self.score = Int.random(in: 1...99)
    }
}

var oliver = Player(name: "Oliver J")
oliver.score
