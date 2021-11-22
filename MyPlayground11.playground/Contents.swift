import UIKit

let myName = "lee won hyung"

for character in myName {
    print(character)
}

let myName1 = "lee"
let myName2 = "won"

let name = myName1 + myName2

let myLongStr =
"""
hi
    hello
welcome
"""

// description을 통해 string타입으로 출력
let isOn = false
isOn.description

let Number = 13
Number.description
String(Number)

"my number is \(Number)"

let a = 123.456
String(a).split(separator: ".")
