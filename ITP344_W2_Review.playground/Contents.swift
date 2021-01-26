import Foundation

// Constants & Variables

let constant = 100
var variable = 20

variable = 50
print(constant)
print(variable)

print(type(of: constant))
print(type(of: variable))

// variable = 10.1 // error: cannot assign value of type 'Double' to type 'Int'

let integer: Int = 100
let double: Double = 101
let nonOptionalNotInitializedInteger: Int
let crashIfNilInteger: Int!
let optionalInteger: Int?
let defaultInteger = Int()

crashIfNilInteger = 10
nonOptionalNotInitializedInteger = 11
optionalInteger = 12

print(crashIfNilInteger)
print(optionalInteger)
print(defaultInteger)
print(nonOptionalNotInitializedInteger)

// Collection types
//
var intArray = [Int]()
intArray.append(1)
intArray.append(-1)
print(intArray)
intArray = [1, 2, 3]
print(intArray)
//
var intSet = Set<Int>()
intSet.insert(10)
intSet.insert(10)
intSet.insert(11)
print(intSet)
intSet = Set<Int>(arrayLiteral: 1, 2, 3)
intSet.insert(100)
print(intSet)
//
var intStringDict = [Int: String]()
intStringDict[1] = "One"
intStringDict[1] = "Un"
intStringDict[-1] = "Negative"
print(intStringDict)
print(intStringDict.keys)
print(intStringDict.values)
intStringDict = [1: "One", 2: "Two"]
print(intStringDict)

// Optionals
var optionalString: String?
optionalString = nil
print(optionalString)
optionalString = "ezpz"
print(optionalString)
print(optionalString!)
print(optionalString ?? "nil string")
if let unwrappedOptionalString = optionalString {
    print(unwrappedOptionalString)
}
if optionalString != nil {
    print(optionalString!)
}

// Control flow
var i = 0
while (i < 5) {
    print(i)
//    ++i
//    i++
    i += 1
}

if (i < 10) {
    print("i is < 10")
}

switch i {
case 1, 2, 3:
    print("one two three")
    break
case 4, 5, 6:
    print("four five six")
    break
default:
    break
}

let testArray = [1, 2, 5, 6, 7, 8]
for element in testArray {
    print(element)
}

// Struct & classes
struct Strucc {
    var number = Int()
    mutating func changeMyself() {
        number += 1
    }
}

class Clahhsse {
    var number = Int()
    func changeMyself() {
        number += 1
    }
}

var struccA = Strucc()
struccA.number = 10
var b = struccA
b.changeMyself()
print("Strucc A: \(struccA.number)")
print("b: \(b.number)")

var clahhsseA = Clahhsse()
clahhsseA.number = 100
var cB = clahhsseA
cB.changeMyself()
print("cA: \(clahhsseA.number)")
print("cb: \(cB.number)")

// Functions
func doSomething(argumentLabel parameterName: Int) -> Int {
    return parameterName + 1
}
print(doSomething(argumentLabel: 10))

func passArgByReference( arg1: inout Int) {
    arg1 += 10
}
var toBeModified = 111
passArgByReference(arg1: &toBeModified)
print(toBeModified)

func returnManyThings() -> (Int, String) {
    return (1, "yee yee haircut")
}
let retValOfManyThings = returnManyThings()
print(retValOfManyThings.0)
print(retValOfManyThings.1)
print(retValOfManyThings)

// Protocol
protocol RoastMaster {
    var someVar: Int { get set }    // Not covered here
    func roastFranklin()
}

class Lamar: RoastMaster {
    var someVar: Int = 0
    
    func roastFranklin() {
        print("Get rid of that yee yee haircut")
    }
    
}

// Extensions
extension Lamar {
    func greetFranklin() {
        print("Sup, can a loc come up in yo crib?")
    }
}

// Closures
import UIKit

let someYeeYeeView = UIView()
UIView.animate(withDuration: 0.2) {
    someYeeYeeView.alpha = 0
} completion: { (didFinish) in
    print(didFinish)
}

// Error handling
enum MyError: Error {
    case yeeYeeError(String)
}
func throwError() throws {
    throw MyError.yeeYeeError("Yo")
}

try? throwError()
//try! throwError()
do {
    try throwError()
} catch {
    print(error.localizedDescription)
}

// More commonly you will get an Error? within a closure.
// Simply check if that Error is nil

//
