import SwiftUI
import PlaygroundSupport

// 상수, 변수의 선언
// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수의 선언
// let 이름: 타입 = 값

// 변수의 선언
// var 이름: 타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let constant: String =  "상수는 차후에 변경이 불가능"
var variable: String = "변수는 차후에 변경이 가능하다" // 오류 발생

// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 한다. let일 경우 한번만 선언 가능
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 굉장히 데이터 타입에 엄격하다. 암시적으로 이루어지는 데이터타입의 변형은 문제를 일으키기 때문이다.
// Bool은 true와 false로만 가능

var someChararcter: Character = "🥰"
someChararcter = "🤩"
someChararcter = "가"
someChararcter = "A"
// string에는 여러 글자가 올 수 있으며 Character타입도 가능
// 하지만 someString = someChararcter은 불가능!

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입ㅇ르 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 123.12

let someDouble: Double = someAny as! Double //이렇게 할당 가능하다.

class someClass {}
var someAnyObject: AnyObject = someClass()
// someAnyObject = 123.12 오류 발생

//someAny = nil
//someAnyObject = nil 모두 오류이다.

/*var integers: Array<Int> = Array<Int>() // 빈 array생성
integers.append(1)
integers.append(100)

integers.contains(100)
integers.contains(99) // 요소가 있는지 확인

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count
*/
var doubles: Array<Double> = [Double]()
var characters: [Character] = [] // 이렇게 간단하게 쓸 수 있다.

var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary["someKey"] = "dictionary"
anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary["someKey"] = nil
anyDictionary

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name" : "yagom", "gender": "male"]

// let someValue: String = initalizedDictionary["name"] 왜 안되는지 생각해보기
// key에 해당되는 값이 있을 수도 있고 없을 수도 있는 불확실성 때문에 오류가 나는 것이다.

var integerSet: Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(100)

print(integerSet)

print(integerSet.contains(1))
print(integerSet.contains(84))

integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union)

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion)

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection)

// 차집합
let subtracing: Set<Int> = setA.subtracting(setB)
print(subtracing)

/*
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    함수 구현부
    return 반환값
}
*/

func sum(a: Int, b: Int)->Int{
    return a + b
}
print(sum(a: 1, b: 3))

func printMyName(name: String) -> Void {
    print(name)
}
printMyName(name: "Junhong Park")
printMyName(name: "Wan Kim")

func printYourName(name: String) {
    print(name)
}
printYourName(name: "Hanbin Cho")
printYourName(name: "Subin Cho")

func maximumIntergerValue() -> Int {
    return Int.max
}
print(maximumIntergerValue())

func bye() {
    print("bye")
}
bye()

func greeting(friend: String, me: String = "Junhong") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "Wan")
//greeting(friend: "Ive", me: "Junhong")

func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}
// 전달인자 레이블 : 함수를 호출할 때 사용자의 입장에서 매개변수의 역할을 좀 더 명확하게 표현하고자 할 때 사용
// 전달인자 레이블은 변경하여 동일한 이름의 함수를 중복으로 생성가능
greeting(to: "Wan", from: "Junhong")

// 가변 매개변수 : 전달 받을 값의 개수를 알기 어려울 떄 사용, 가변 매개변수는 함수당 하나만 가질 수 있다.
// 기본값이 있는 매개변수와 같이 가변 매개변수 역시 매개변수 목록 중 뒤쪽에 위치하는 것이 좋다.

func sayHelloFriends(me: String, friends: String ...)-> String {
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloFriends(me: "Junhong", friends: "Wan", "yoonseoung", "Jae", "Doby"))
print(sayHelloFriends(me: "Junhong"))

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("Wan", "Junhong")

someFunction = greeting(friend:me:)
someFunction("Wan", "Junhong")

func runAnother(function: (String, String) -> Void) {
    function("jenny", "Mike")
}

runAnother(function: greeting(friend:me:))
runAnother(function: someFunction) // 함수타입의 변수가 들어올 수 있다.

let someInteger = 103

if someInteger < 100 {
    print("100미만")
} else if someInteger > 100 {
    print("100초과")
} else {
    print("100")
}

switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

switch "yagom" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "yagom":
    print("yagom")
default:
    print("unknown")
}

var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

for (name, age) in people {
    print("\(name): \(age)")
}

while integers.count>1 {
    integers.removeLast()
}
print(integers)
integers.append(2)
integers.append(3)
print(integers)
repeat {
    integers.removeLast()
} while integers.count > 1
print(integers)

// someOptionalParm에 nil 할당 가능
func someFunction(someOptionalParam: Int?) {
    
}

someFunction(someOptionalParam: nil)

 /*enum Optional<Wrapped>: ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
}*/

let optionalValue: Optional<Int> = nil
let optionalValue2: Int? = nil

var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1
// 기존 변수처럼 이용 가능

implicitlyUnwrappedOptionalValue = nil
// nil할당 가능


var optionalValue3: Int? = 100

switch optionalValue3 {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
// 기존 변수터럼 사용 불가.

func printName(_ name: String)
{
    print(name)
}

var myName: String? = nil

// printName(myName)

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName: String! = nil
if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}
// name 상수는 if let 구문 내에서만 사용 가능

myName = "Junhong"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
yourName = "hana"
if let name = myName, let friend = yourName {
    print("2 \(name) and \(friend)")
}

var arrayTwo: [Int] = Array<Int>()
var dictionary: [String:Int] = ["key":100]
var arrayThree: [Int] = []
var arrayOne: Array<Int> = [1, 2, 3]
// var dictionaryOne: Dictionary<String> = <String>()

var meineName: String? = "Junhong"
var deineName: String! = nil

print(meineName!)
meineName = nil
deineName = nil
