import UIKit

var a: Int? = 20
var b: Int?


//unwrapping
//if statements

if a != nil{
    print(a)
}

//if let
//if var
if let hasNumber1 = a {
    print(hasNumber1)
}

if var hasNumber2 = a{
    hasNumber2 = hasNumber2*2
    print(hasNumber2)
}

//guard let
//guard var

func aaa() {
    guard let hasNumber3 = a else{
        return //값이 없으면 아래 print문이 출력안되고 종료
    }
    print(hasNumber3)
    print("end")
}

aaa()
