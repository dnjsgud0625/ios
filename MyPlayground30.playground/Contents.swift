import UIKit

// protocol
// 규격, 규약, 규칙

protocol UserInfo {
    var name: String { get set }
    var age: Int { get set } // get만 사용할 경우 class에서 let으로 선언 불가
                            // -> set이 안되기 때문에
    
    //var age: Int = 0  -> 값이 정의되는 부분은 사용할 수 없음
    
    func isAdult() -> Bool // function의 body는 사용X
}

protocol UserScore {
    var score: Int { get set }
}

protocol UserDetail: UserScore, UserInfo { // 프로토콜을 묶어서 사용할 수 있음
}

extension UserInfo {
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}

class Guest: UserInfo, UserScore {
    var score: Int = 0
    
    var name: String = "kim"
    var age: Int = 0
//    func isAdult() -> Bool { -> extension으로 서설정하여 필요없음
//        if age > 19 {
//            return true
//        }
//        return false
//    }
}

class Member: UserDetail {
    var score: Int=0
    var name: String
    
    var age: Int
    
//    func isAdult() -> Bool {
//        if age > 19 {
//            return true
//        }
//        return false
//    }
    
    init(name: String, age: Int) { //초기값 설정이 안되있으므로 init 시켜야함
        self.name = name
        self.age = age
    }
}

class Vip: UserInfo {
    var name: String = "lee"
    var age: Int = 25
    // function을 구현할 경우 구현된 내용을 출력
    // 구현되지 않았으면 extension된 function으로 출력
}

class UserInfoPresenter {
    func present() {
        let guest = Guest()
        let member = Member(name: "jane", age: 25)
        let vip = Vip()
        
        //let members = [guest,member,vip] -> any type으로 바꿀 경우 각각의 해당되는 class type이 any타입으로 바뀐다
        let members2: [UserInfo] = [guest,member,vip]
        
        for element in members2 {
            print(element.name)
        }
        
        print(guest.name)
        print(member.name)
        print(vip.name)
    }
}

let presenter = UserInfoPresenter()
presenter.present()
