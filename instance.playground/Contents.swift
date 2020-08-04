import UIKit

class PersonA {
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

let jason: PersonA = PersonA()
jason.name = "jason"
jason.age = 19
jason.nickName = "mapleStroy"

// 프로퍼티 초기값을 지정하기 어려운 경우, init을 통해 초기값 전달 가능

class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    init(name: String, age:Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let noah: PersonB = PersonB(name: "Noah", age: 26, nickName: "Junhong")

// 프로퍼티 초기값이 꼭 필요 없을 때
// 옵셔널을 사용한다.
// class 내부의 init을 사용할 땐, convenience 키워드 사용

class PersonC {
    var name: String
    var age: Int
    var nickName: String?
    
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let jenny: PersonC = PersonC(name: "Jenny", age: 10)
let mike: PersonC = PersonC(name: "Mike", age: 11, nickName: "MC")

// 암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하지만 초기값을 할당하지 않고자 할 때 사용

class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)가 주인 \(owner.name)와(과) 산책을 합니다")
    }
}

let happy: Puppy = Puppy(name: "happy")

happy.owner = jenny
happy.goOut()


// 실패 가능한 이니셜라이저
// 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우 인스턴스 생성에 실패할 수 있습니다.
// 인스턴스 생성에 실패하면 nil을 반환합니다.
// 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다.
// init?을 사용합니다.

class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 12)
let batman: PersonD? = PersonD(name: "", age: 10)

print(john ?? "nil")
print(joker ?? "nil")
print(batman ?? "nil")
print(john?.name.count ?? "no name")
print(joker?.name ?? "")
print(joker?.name.count ?? "no name")
