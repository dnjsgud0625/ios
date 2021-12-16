import UIKit

// 계산기 = Class
// 로직 = Function

let a = 10
let b = 20

func plus(_ num1: Int, _ num2: Int) -> Int {
    return num1+num2
}

func minus(_ num1: Int, _ num2: Int) -> Int {
    return num1-num2
}

func multiply(_ num1: Int, _ num2: Int) -> Int {
    return num1*num2
}

var inputButtonType = "+"

if inputButtonType == "+" {
    print("연산결과", plus(a,b))
}
else if inputButtonType == "-" {
    print("연산결과", minus(a, b))
}
else if inputButtonType == "*" {
    print("연산결과", multiply(a, b))
}



func calc(result: ((Int,Int) -> Int)) {
    print("연산결과", result(a,b))
}

if inputButtonType == "+" {
    calc(result: plus)
}
else if inputButtonType == "-" {
    calc(result: minus)
}
else if inputButtonType == "*" {
    calc(result: multiply)
}
