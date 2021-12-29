import UIKit

var greeting = "Hello, playground"

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Taylor")
print(beatles)

beatles[0]

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(0)


var albums = Array<String>()
albums.append("Fearless")
albums.append("Red")
albums.count

var characters = ["Lana", "John", "Allen", "Marie", "Gold"]
characters.count

characters.remove(at: 1)
characters.count

characters.removeAll()
characters.count

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
bondMovies.contains("Frozen")

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities)
let sortedCities =  cities.sorted()
print(sortedCities)

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)



//Dictionary

let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]


let olympics = [
    2012: "London",
    2016: "Rio",
    2021: "Tokyo"
]

var heights = Dictionary<String, Double>()
heights["Sachin"] = 5.0
heights["Virat"] = 5.8
heights["Ishant"] = 6.2
heights.count

if let dictIndex = heights.index(forKey: "Sachin") {
    heights.remove(at: dictIndex)
    print(heights)
}


var actors = Set([
    "Denzel",
    "Tom",
    "Cage",
    "Samuel"
])

print(actors)
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
print(actors)

actors.contains("Tom")
let sortedSet = actors.sorted()
