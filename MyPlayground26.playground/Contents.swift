import UIKit

// Initializer
// 생성자
// init

class MyInfo {
    // 입력한 값을 받아와 값을 세팅하여 사용하므로 처음에 값이 없을 수 있음
    var name: String
    var myID: String
    
    var age: Int?
    var isAdult: Bool
    
    // designated initializer
    init(n: String, id: String) {
        self.name = n
        self.myID = id
        self.isAdult = ((age ?? 0)>19) ? true : false
    }
    
    // myID가 let으로 설정된 경우 이 init을 사용할 경우 무조건 ""이들어가서 사용하면 안됨
//    init() {
//        self.name = ""
//        self.myID = ""
//        self.isAdult = (age>19) ? true : false
//        // 초기값이 세팅되어 있지 않은 경우 반드시 init에서 세팅해줘야함
//    }
//
//    init(id: String) {
//        self.name = ""
//        self.myID = id
//        self.isAdult = (age>19) ? true : false
//    }
    
    // convenience initializer
    // 필수조건 - 다른 init을 반드시 실행해야된다.
    convenience init() {
        self.init(n:"", id:"")
    }
    
    convenience init(id: String) {
        self.init(n: "", id: id)
    }
}

var myInfo1 = MyInfo(n: "lee", id: "dnjsgud")
var myInfo2 = MyInfo()
var myInfo3 = MyInfo(id: "hihi")

myInfo1.myID
myInfo1.name

myInfo2.name
myInfo2.myID

myInfo3.name
myInfo3.myID


struct MyConfig {
    var conf: String
}

var mycon = MyConfig(conf: "abcde")
