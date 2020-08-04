import UIKit

// 상속
// 클래스, 프로토콜 등에서 가능
// 열거형, 구조체는 상속 불가능
// 스위프트의 클래스는 단일상속 (다중 상속을 지원하지 않음)

// final 키워드 사용 -> 재정의(override) 방지
// static 키워드 사용 -> 타입 메서드 -> 재정의 불가능
// class 키워드 사용 -> 타입 메서드 -> 재정의 가능
// final class = static
// override 키워드 -> 부모 클래스의 메서드 재정의 가능

class Person {
    var name: String = ""
    func selfIntroduce() {
        print("Ich bin \(name)")
    }
    
    // 재정의 방지
    final func sayHello() {
        print("Hello")
    }
    
    // 타입 메서드
    // 재정의 불가 타입
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    
    // final 키워드 사용하면 재정의 불가
    // final class = static
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

class Student: Person {
    var major: String = ""
    
    override func selfIntroduce() {
        print("Ich bin \(name) und studiere \(major)")
    }
    
    override class func classMethod() {
            print("overriden type method - class")
        }
        
    // static을 사용한 타입 메서드는 재정의 불가
    //  override static func typeMethod() {    }
        
    // final 키워드를 사용한 메서드, 프로퍼티는 재정의 불가
    //  override func sayHello() {    }
    //  override class func finalClassMethod() {    }
}

let noah: Person = Person()
let sam: Student = Student()

noah.name = "Noah"
sam.name = "Sam"
sam.major = "Swift"

noah.selfIntroduce()
sam.selfIntroduce()

