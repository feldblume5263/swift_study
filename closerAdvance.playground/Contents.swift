import UIKit

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
    }
var result: Int

result = calculate(a: 10, b: 10) {(left: Int, right: Int) -> Int in
    return left + right
}

print(result)

result = calculate(a: 10, b: 10, method: {(left: Int, right: Int) in
    return left + right
})

print (result)

result = calculate(a: 10, b: 10) {(left: Int, right: Int) in
    return left + right
}

result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})
print(result)

result = calculate(a: 10, b: 10) {
    return $0 + $1
}
print(result)

result = calculate(a: 10, b: 10) {
    $0 + $1
}
print(result)

result = calculate(a: 10, b: 10) {$0 + $1}
