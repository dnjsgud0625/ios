import UIKit

// Closure (클로저)
// 특징 : 이름이 없음

//function과 유사

//function
func score(a: Int) -> String {
    return "\(a)점"
}

let sc = score
sc(50)


//closure
let score2 = { (a: Int) -> String in
    return "\(a)점"
}

score2(40)
