import UIKit

//기초 연산자
//basic operators

var a = 20
let b = 30
let c = a + b

a += 2

let d: Double = 20
let f:Double = 30
let g = d/f

//swift 언어의 특징
//타입이 엄격하다. Type Safe

let i: Int = 20
let j: Double = 30
let k = i + Int(j)

//%는 Int형만 사용할 수 있다.
if f.truncatingRemainder(dividingBy: 2) == 0{
    print("짝수")
}else{
    print("홀수")
}
