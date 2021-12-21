import UIKit

let myscore = { (a:Int) -> String in
    return "\(a)점"
}


//축약(생략)
let myscore2 = { (a:Int) -> String in
    "\(a)점"
}

let myscore3 = { (a:Int) in
    "\(a)점"
}
myscore3(40)


let myScore4: (Int) -> String = { a in
    "\(a)점"
}
myScore4(200)

let myScore5: (Int,Int) -> String = { (a,b) in
    "\(a+b)점"
}
myScore5(200,50)

let myScore6: (Int) -> String = {
    "\($0)점"
}
myScore6(100)
