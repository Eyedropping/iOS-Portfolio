import UIKit

var str = "Hello, playground"

let quotation = """
babooshka obossala moi bryzgowyky \
ahahahahaaha \u{1F496}
"""

/* "\" sign is used to cut the line breaks inside a multiline string*/

print(quotation)

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""
let stringWithDelimiters = #"Line1\nLine2"# // this will literally pring \n instead of printing strings on two lines
print(stringWithDelimiters)

let extendedDelinmitersString = #"""
Here are three double quotes: """
"""#
print(extendedDelinmitersString)

let initializedEmptyString = ""
let sameInitializedEmptyString = String()
var isEqual = initializedEmptyString == sameInitializedEmptyString

var anotherString = "Morschiny"
anotherString += " and Vodka" // string is mutated
print(anotherString)

let catCharacters: [Character] = ["T", "u", "p", "o", "y", "!", "🐱"]
let tupoyString = String(catCharacters)

var stringToConcatenante = "Tup"
let anotherStringToConcatenante = "oj!🐱"
let concatenatedStrings = stringToConcatenante + anotherStringToConcatenante // this concats two strings
stringToConcatenante += anotherStringToConcatenante

let start = """
one
two
"""

let addition = """

three
"""

print(start + addition)

print(#"6 times 8 is \#(6 * 8)"#) // dealing with interpolation in delimited string

/*
 Every instance of Swift’s Character type represents a single extended grapheme cluster. An extended grapheme cluster is a sequence of one or more Unicode scalars that (when combined) produce a single human-readable character. See below.
 */

let eAcute: Character = "\u{E9}"
let e: Character = "\u{65}"
let acute: Character = "\u{301}" // this grapheme cluster contains one Unicode scalar
let combinedAcute: Character = "\u{65}\u{301}" // this grapheme cluster contains two Unicode scalars

/*
different characters can require different amounts of memory to store, so in order to determine which Character is at a particular position, you must iterate over each Unicode scalar from the start or end of that String. For this reason, Swift strings can’t be indexed by integer values.
*/

var greeting = "Hello, my friend!"
greeting[greeting.startIndex] // subscript to access a specified position of a string
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 4)
greeting[index]


for index in greeting.indices {
    print("\(greeting[index])", terminator: " ")
}

greeting.insert("@", at: greeting.endIndex)
greeting.insert(contentsOf: "  dear ok sir shit", at: greeting.index(before: greeting.endIndex))
print(greeting, terminator: " ")
greeting.count

greeting.remove(at: greeting.index(before: greeting.endIndex))
print(greeting)

let subrange = greeting.startIndex..<greeting.endIndex
greeting.removeSubrange(subrange)
print(greeting)

greeting.append("Hello, world!")

let anotherIndex = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<anotherIndex] // this reuses the memory address of the string, because this is a substring
let newGreeting = String(beginning) // and this is the new address




