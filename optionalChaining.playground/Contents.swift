import UIKit

//  옵셔널 체이닝
//      옵셔널 체이닝은 옵셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을 때 유용하게 활용 가능
//      매번 nil확인 절차 없이 최종적으로 값이 존재하는지 확인 가능

class Person {
    var name: String?
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(BN: String, RN: String) {
        self.buildingNumber = BN
        self.roomNumber = RN
    }
}

let noah: Person? = Person(name: "noah")
let apart: Apartment? = Apartment(BN: "am Hasensprung 25", RN: "3-1")
let superman: Person? = Person(name: "superman")

// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로 결과 타입도 옵셔널이다.
// 만약 우리 집의 경비원의 직업이 궁금하다면?

// 옵셔널 체이닝을 사용하지 않는다면?
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardName = `guard`.name {
                    if let guardJob = `guard`.job {
                        print("우리집 경비원의 이름은 \(guardName)이고 직업은 \(guardJob)입니다")
                    } else {
                        print("우리집 경비원은 직업이 없어요")
                    }
                }
            }
        }
    }
}
noah?.home = apart
let junhong: Person? = Person(name: "Junhong")
junhong?.job = "programmer"
noah?.home?.guard = junhong
guardJob(owner: noah)


// 옵셔널 체이닝을 사용한다면
func guardJobWithOptionChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job, let name = owner?.home?.guard?.name {
        print("우리집 경비원의 이름은 \(name)이고 직업은 \(guardJob)입니다")
    } else {
        print("경비원을 찾을 수 없습니다")
    }
    
}
guardJobWithOptionChaining(owner: noah)

//  nil 병합 연산자
//      중위 연산자이다. ??
//      Optional ?? Value
//      옵셔널 값이 nil일 경우, 우측의 값을 반환
//      띄어쓰기 주의
