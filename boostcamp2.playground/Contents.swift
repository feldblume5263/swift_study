//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

struct Sample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100
    static var typeProperty: Int = 100
    
    
    func instanceMethod() {
        print("instance method")
    }
    
    static func typeMethod() {
        print("type method")
    }
}

// 가변 인스턴트 생성
var mutable: Sample = Sample()

mutable.mutableProperty = 200

// 불변 인스턴트 생성
let immutable: Sample = Sample()

mutable.instanceMethod()
immutable.instanceMethod()
Sample.typeProperty = 300
Sample.typeMethod() // type method
/*
struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생 타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(`class`)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var Junhong: Student = Student()
Junhong.name = "Junhong"
Junhong.class = "42Seoul"
Junhong.selfIntroduce()

class classSample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100
    static var typeProperty: Int = 100
    
    func instanceMethod() {
        print("instance method")
    }
    
    static func typeMethod() {
        print("type method - static")
    }
    
    class func classMethod() {
        print("type method - class")
    }
}
*/
class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("it's a Type of Student")
    }
    func selfIntroduce() {
        print("I'm \(self.class) class \(self.name)")
    }
}

Student.selfIntroduce()

var junhong: Student = Student()
junhong.name = "Junhong"
junhong.class = "42Seoul"
junhong.selfIntroduce()

let noah: Student = Student()
noah.name = "Noah"
noah.selfIntroduce()
