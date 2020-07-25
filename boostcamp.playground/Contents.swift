import SwiftUI

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

var integers: Array<Int> = Array<Int>() // 빈 array생성
integers.append(1)
integers.append(100)

integers.contains(100)
integers.contains(99) // 요소가 있는지 확인

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

var doubles: Array<Double> = [Double]()
var characters: [Character] = []

var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary["somKey"] = "dictionary"
anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary["someKey"] = nil
anyDictionary


