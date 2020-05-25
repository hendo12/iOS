import UIKit

var str = "Hello, playground"
str = "Hello, Swift"
let constStr = str

var nextYear: Int = 0
var bodyTemp: Float = 0
var hasPet: Bool = true
var arrayOfInts:Array<Int> = []
var arrayOfStrings: [String] = []
var dictionaryOfCapitalsByCountry: [String:String] = [:]
var winningLotteryNumbers: Set<Int> = []

let number = 42
let meaningOfLife = String(number)
let fmStation = 91.2

var countingUp = ["one", "two"]
let secondElement = countingUp[1]
countingUp.count
countingUp.append("three")

let nameByParkingSpace = [13: "Alice", 27: "Bob"]
//let space13Assignee: String? = nameByParkingSpace[13]
for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
    print(permit)
}

if let space13Assignee = nameByParkingSpace[13] {
    print(space13Assignee)
}

let space42Assignee: String? = nameByParkingSpace[42]

let emptyString = String()
emptyString.isEmpty
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()
let defaultNumber = Int()
let defaultBool = Bool()

let availableRooms = Set([205, 411, 412])
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

var reading1: Float?
var reading2: Float?
var reading3: Float?
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7

if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
    let avgReading = (r1 + r2 + r3) / 3
    print(avgReading)
} else {
    let errorString = "Instrument reported a reading that was nil."
    print(errorString)
}

let range = 0..<countingUp.count
for i in range {
    let string = countingUp[i]
    //Use 'string'
}

for string in countingUp {
    //use 'string
    print(string)
}

for (i, string) in countingUp.enumerated() {
    //(0, "one"), (1, "two")
    print(i, string)
}

enum PieType: Int {
    case apple = 0
    case cherry
    case pecan
}

let favoritePie = PieType.apple

let name: String
switch favoritePie {
case .apple:
    name = "Apple"
case .cherry:
    name = "Cherry"
case .pecan:
    name = "Pecan"
}

let pieRawValue = PieType.pecan.rawValue

if let pieType = PieType(rawValue: pieRawValue) {
    //got a valid 'pietype'
    print(pieType)
}

let compareAscending = { (i: Int, j: Int) -> Bool in
    return i < j
}

compareAscending(42, 2)
compareAscending(-2, 12)

var numbers = [42, 9, 12, -17]
numbers.sort(by: compareAscending)
numbers.sort(by: { (i, j) -> Bool in
    return i < j
})
