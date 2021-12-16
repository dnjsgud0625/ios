import UIKit

// Function

// 계산기 -> Class
// 사칙연산 -> Function

let a = 10
let b = 20

var c = 0

func plus(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

let sum = plus(num1: a, num2: b)
print(sum)

func plus2(num1: Int, num2: Int) {
    c = num1 + num2
}

c
plus2(num1: a, num2: b)
c

func plus4(_ num1 : Int, _ num2: Int) -> Int{
    return num1+num2
}

let q = plus4(a,b)
q



func plus3(num1: Int, num2: Int) -> (String,Int) {
    return ("결과값은",num1+num2)
}

let p = plus3(num1: a, num2: b)
p
