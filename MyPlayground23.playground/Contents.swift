import UIKit

// Class

class Myinfo {
    
    init(gender: GenderType) {
        self.genderType = gender
    }
    
    enum GenderType {
        case male
        case female
    }
    
    private var genderType: GenderType
    
    var name = ""
    var age = 0
    
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}
 
var myInfo = Myinfo(gender: .male)
// myInfo.genderType = .female -> private로 설정시 외부 변경 x
myInfo.age = 20

var myInfo2 = myInfo // 참조
myInfo2.age // 20
myInfo2.age = 100 // 참조 시 바뀐 내용이 모두 변경

var myInfo3 = myInfo2

myInfo.age
myInfo2.age
myInfo3.age
