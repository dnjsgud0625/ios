import UIKit

// Control Flow (흐름 제어)

//for

let name = "jake"

for char in name {
    print(char)
}

let names = ["A", "B", "C"]

for na in names {
    print(na + "님")
}

let numberOfLegs = ["Ant" : 6, "Dog" : 4]

for element in numberOfLegs {
    print(element)
}

for index in 0..<5 {
    print(index)
}

//while (무한루프 주의)

//var a == 0
//
//while a == 0 {
//    print("실행")
//}

//Switch
//조건에 케이스를 만들어 분기

let a = "a"

switch a {
case "b":
    print("b")
case "a", "d", "e":
    print("a or d or e")
default:
    print("nothing")
}
