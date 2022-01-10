import UIKit

// inheritance
// 상속 - class에서만 가능

// enum, protocol, struct에서 사용불가

class UserInfo {
    var name = ""
    var age = 0
    func isAdult() -> Bool {
        if age>19 {
            return true
        }
        return false
    }
}

class Guest: UserInfo {
    override func isAdult() -> Bool {
        return true
    }
    
    func present() {
        name = "kim"
        print(name)
        print(super.name)
        
        print(isAdult()) // override된 함수
        print(super.isAdult()) // 부모 클래스에 있는 함수
    }
}

let guest = Guest()
guest.present()
