import UIKit

// 클로저 -> 이름이 없는 함수 (일급 객체)
let sum: (Int, Int) -> Int = {(a: Int, b: Int) in
    return a + b
}

let sumResult: Int = sum(1, 2)
print(sumResult)

let add: (Int, Int) -> Int
add = {(a: Int, b: Int) in
    return a + b
}

let substract: (Int, Int) -> Int
substract = {(a:Int, b: Int) in
    return a - b
}

let divide: (Int, Int) -> Int
divide = {(a: Int, b: Int) in
    return a / b
}

let multiple: (Int, Int) -> Int
multiple = {(a: Int, b: Int) in
    return a * b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)
print(calculated)

calculated = calculate(a: 50, b: 10, method: substract)
print(calculated)

calculated = calculate(a: 50, b: 10, method: divide)
print(calculated)

calculated = calculate(a: 50, b: 10, method: multiple)
print(calculated)

calculated = calculate(a: 50, b: 10, method: {(left: Int, right: Int) -> Int in
    return left * right
})

print(calculated)
