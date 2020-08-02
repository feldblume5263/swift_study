import UIKit

struct Student {
    var name: String = ""
    var `class`: String = "42iOS"
    var koreanAge: Int = 0
    
    var westernAge: Int {
        get{
            return koreanAge - 1
        }
        
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    
    static var typeDescription: String = "Schüler"
    
    var selfIntroduction: String {
        get {
            return "Ich bin Klasse \(self.class), \(name)"
        }
    }
    
    static var selfIntroduction: String {
        return "Typ des Schülers"
    }
}

print(Student.selfIntroduction)
var noah: Student = Student()
print(noah.koreanAge)

var junhong: Student = Student()
junhong.koreanAge = 27
junhong.name = "Junhong Park"
print(junhong.name)
print(junhong.selfIntroduction)
print("Ich bin \(junhong.koreanAge) Jahre alt und \(junhong.westernAge) Jahre alt als U.S.A")

/*struct Money {
    var currencyRate: Double = 1300
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}
var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)

moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)
*/
// property 감시자

struct Money {
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다.")
        }
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다.")
        }
    }
    
    var dollar: Double = 0 {
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다.")
        }
    }
    
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket: Money = Money()

moneyInMyPocket.currencyRate = 1150
moneyInMyPocket.dollar = 10

print(moneyInMyPocket.won)
