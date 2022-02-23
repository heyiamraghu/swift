import UIKit

//Variables and Constants

var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"
name = "Keeley"


let character = "Daphne"
//character = "Eloise"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Michael Scott"
let dogBreed = "Samoyed"

//Strings

let actor = "Denzel Washington"
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
print(quote)


let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)

print(actor.count)

let nameLength = actor.count
print(nameLength)

print(quote.uppercased())

print(movie.hasSuffix("engineer"))
print(movie.hasPrefix("A day"))


//Integers

let score = 10

var reallyBig = 100000000
reallyBig = 100_000_000


let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)


var counter = 5
counter = counter + 5

counter += 5
print(counter)

counter -= 5
print(counter)

counter *= 5
print(counter)

counter /= 5
print(counter)

let number = 120
print(number.isMultiple(of: 3))
print(300.isMultiple(of: 5))


let decimalNumber = 0.1 + 0.2
print(decimalNumber)


let a = 1
let b = 0.2
let c = Double(a) + b

var rating = 5.0
rating *= 2
print(rating)


//Booleans

let goodDogs = true
var gameOver = false

let isMultiple = 120.isMultiple(of: 3)


var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(false)

print(gameOver)
gameOver.toggle()
print(gameOver)


//String Interpolation

let firstPart = "Hello, "
let secondPart = "world!"
let strGreeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action


let strName = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I am \(age) years old."
print(message)


let celsius = 35
let fahrenheit = (celsius * 9 / 5) + 32
let tempMessage = "the temp in celsius is \(celsius)°C and it is \(fahrenheit)°F"
print(tempMessage)


//Collections

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 16, 23, 42]
let temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
beatles.append("Adrian")


var scores = Array<Int>()
scores.append(35)
scores.append(50)
scores.append(75)


var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

var players = [String]()
players.append("Dhoni")
players.append("AB")
players.append("KP")
players.append("Clarke")

players.count

var characters = Array<String>()
characters.append("Lana")
characters.append("Pam")
characters.append("Ray")
characters.append("Sterling")

print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)


let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))
print(bondMovies.contains("Spectre"))


let cities = ["London", "Tokyo", "Rome", "Budapest"]
cities.sorted()


let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee["name"]!)
print(employee["job"]!)
print(employee["location"]!)

print(employee["name", default: "Unknown"]) //Dictionary default values


let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2021, default: "Unknown"])


var heights = Dictionary<String, Int>()
heights["Yao Ming"] = 229
heights["Shaquille O'Neil"] = 216
heights["LeBron James"] = 206

heights.count


var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Sam Jackson")
print(actors)

print(actors.contains("Tom Cruise"))
print(actors.count)
print(actors.sorted())
