import UIKit

var str = "Hello, playground"

class MyReferenceType {
  var a: Int
  init(a: Int) {
    self.a = a
  }
}
var R1 = MyReferenceType(a: 1)
var R2 = R1

print(R1.a)

R2.a = 42

print(R1.a, R2.a)


var a = 42
var b = a
b = 0

print(a, b)

//struct MyValueType {
//  var a: Int
//}
//var V1 = MyValueType(a: 1)
//var V2 = V1
//V2.a = 42
//print(V1)
//
//print(V2)

func address(of pointer: UnsafeRawPointer) -> String {
    let length = 2 + 2 * MemoryLayout<UnsafeRawPointer>.size
    let address = Int(bitPattern: pointer)
    return String(format: "%0\(length)p", address)
}

//var v1 = [Int]()
//var v2 = v1
//print(address(of: &v1) == address(of: &v2))


var v3 = [Int]()
var v4 = [Int]()
print("v3's address: \(address(of: &v3))")
print("v4's address: \(address(of: &v4))")

v4.append(1)
print("\nv4's address: \(address(of: &v4))\n")

let text = "Buffalo buffalo buffalo buffalo."
let firstWord = text.prefix(while: { $0 != " "}) // retrieve the string's slice based on defined criterion
print(firstWord)

if let firstSpace = text.firstIndex(of: " ") {
    print(text[..<firstSpace]) // retrieve the string's slice based on range expression
}

var absences = [0, 2, 0, 4, 0, 3, 1, 0]
let secondHalf = absences.suffix(absences.count / 2)
if let i = secondHalf.indices.max(by: { secondHalf[$0] < secondHalf[$1] }) { // this returns the highest index's content through closure
    print("\nHighest second-half absences: \(absences[i])\n")
}
absences[7] = 2
print(absences)
print(secondHalf) // seconHalf remained unchanged thoug the original collection was mutated
print("\n")


var word = "Swiftswift"

for character in word { // iteratrating over the collection by element's position...
    print(character)
}
print("\n")

for i in word.indices { // is the same as iterating using the iterator
    print(word[i])
}

var index = 4

let popTest = word.popLast()


let friends = ["Denis", "Fil", "Tomasz", "Masha"]
let friendsDrop = friends.drop(while: { $0.contains("i") })
print(friendsDrop)
