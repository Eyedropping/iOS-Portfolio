import UIKit

var str = "Hello, playground"

let numericSequence = 1...100

for number in numericSequence {
    print(number)
}

// here we check if there is a cola via for loop
var drinks = ["Vodka", "Wine", "Whiskey", "Cola", "Bleu C", "Rum", "Cognac"]
var hasCola = false
for drink in drinks {
    if drink == "Cola" {
        hasCola = true
        print("'drinks' has Cola\n")
        break
    } else {
        print("'drinks' has no Cola, seeking more")
    }
}

// here we check if there is a cola via the default method
if drinks.contains("Cola") {
    print("'drinks' has Cola\n")
} else {
    print("'drinks' has no Cola, seeking more\n")
}

func abc() {
    defer { print("First defer...\n") }
    defer { print("Second defer...") }
    defer { print("Third defer...") } // defers the statement until the last block is executed
    print("Not deferred")
}

abc()

struct Countdown: Sequence, IteratorProtocol {
    
    typealias Element = Int
    
    var count: Int
    
    mutating func next() -> Countdown.Element? { // The properties of value types cannot be modified within its instance methods by default.
        if count == 0 {
            return nil
        } else {
            defer { count -= 1 }
            return count
        }
    }
}

let threeToGo = Countdown(count: 3)
for i in threeToGo {
    print(i)
}

