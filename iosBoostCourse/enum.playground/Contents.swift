import UIKit

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon
day = .tue
day = .fri
print(day)

switch day {
case .mon, .tue, .wed, .thu:
        print("It's Weekday~")
case .fri:
        print("TGIF Party!")
case .sat, .sun:
        print("It's Weekend :)")
    
}

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

enum School: String {
    case elementary = "Grundschule"
    case middle = "Mittleschule"
    case high = "Gymnasium"
    case university
}
print("School.middle.rawValue == \(School.middle.rawValue)")
print("School.university.rawValue == \(School.university.rawValue)")
let apple: Fruit? = Fruit(rawValue: 0)
if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다.")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
}

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("Warmer Frühling")
        case .jun, .jul, .aug:
            print("heißer Sommer")
        case .sep, .oct, .nov:
            print("lesesaison Herbst")
        case .dec, .jan, .feb:
            print("kalter Winter")
        }
    }
}
Month.mar.printMessage()
