import UIKit

var greeting = "Hello, playground"

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = .thursday
day = .friday


//Type Annotation

var name: String = "AB De Villiers"
var age: Int = 38
var isRetired: Bool = false
var iplTeammates: [String] = ["Virat", "Siraj", "Maxwell"]
var countrymen: Set<String> = Set(["Bavuma", "Jansen"])
var tournamentsPlayedIn: [String: String] = [
    "IPL": "India",
    "Big Bash": "Australia",
    "CPL": "West Indies"
]


enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .dark
