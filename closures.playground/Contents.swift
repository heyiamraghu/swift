import UIKit

var greeting = "Hello, playground"

//Closures

func greetUser() -> String {
    "Hi"
}

greetUser()
var greetCopy: () -> String = greetUser
greetCopy()

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
