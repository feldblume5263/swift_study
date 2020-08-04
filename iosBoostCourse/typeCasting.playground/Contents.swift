import UIKit

//  #### Swift typeCasting ####
//  인스턴스의 타입을 확인하는 용도
// 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인하는 용도
// is, as를 사용

class Person {
    var name: String = ""
    func sleep() {
        print("Ich bin müde :(")
    }
}

class Student: Person {
    var uni: String = ""
    func uniGehen() {
        print("Ich gehe an der Uni")
    }
}

class UniversitätStudent: Student {
    var major: String = ""
    func majorLernen() {
        print("Ich lerne mein Major")
    }
}

var jonathan: Person = Person()
var noah: Student = Student()
var Talia: UniversitätStudent = UniversitätStudent()


//  upCasting
//  as를 사용하여 부모 클래스의 인스턴스로 사용할 수 있도록 컴 파일러에게 타입정보 전환해준다.
//  Any 혹은 AnyObject로도 타입정보 변환 가능
//  암시적으로 처리되므로 꼭 필요한 경우가 아니면 생략해도 무방


var mike: Person = UniversitätStudent() as Person
var jenny: Student = Student()
var jina: Any = Person() as Any

//  downCasting
//  as? 또는 as!를 사용하여 자식 클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 인스턴스의 타입정보를 전환해준다.

//      조건부 다운캐스팅
//  as?를 사용
//  캐스팅에 실패하면, 즉 캐스팅하려는 타입에 부합하지 않는 인스턴스라면 nil을 반환학 ㅣ때문에 결과의 타입은 옵셔널 타입이다.

var optionalCasted: Student?

optionalCasted = mike as? UniversitätStudent
optionalCasted = jenny as? UniversitätStudent
optionalCasted = jina as? UniversitätStudent
optionalCasted = jina as? Student

//      강제 다운캐스팅
//  as!를 사용
//  캐스팅에 실패하면, 런타임오류 발생
//  캐스팅에 성공하면 일반타입 반환

var forcedCasted: Student

forcedCasted = mike as! UniversitätStudent
//forcedCasted = jenny as! UniversityStudent // 런타임 오류
//forcedCasted = jina as! UniversityStudent // 런타임 오류
//forcedCasted = jina as! Student // 런타임 오류


func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversitätStudent:
        (someone as! UniversitätStudent).majorLernen()
    case is Student:
        (someone as! Student).uniGehen()
    default:
        someone.sleep()
    }
}

dump(mike)
dump(jenny)
dump(jina)
doSomethingWithSwitch(someone: mike as Person)
doSomethingWithSwitch(someone: mike)
doSomethingWithSwitch(someone: jenny)
doSomethingWithSwitch(someone: jina as! Person)

func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversitätStudent {
        universityStudent.majorLernen()
    } else if let student = someone as? Student {
        student.uniGehen()
    } else if let person = someone as? Person {
        person.sleep()
    }
}

doSomething(someone: mike as Person)
doSomething(someone: jenny)
doSomething(someone: jina as! Person)


