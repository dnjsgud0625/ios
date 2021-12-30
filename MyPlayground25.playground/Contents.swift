import UIKit

// Properties
// 프로퍼티

class MyInfo {
    
    // stored property (저장)
    var name = ""
    var age = 0
    
    // lazy stored property -> 사용하려고 할 때 메모리에 올려서 사용할 수 있게 한다
    // 미리 생성하면 만약 사진의 사이즈가 크거나 많을 경우 메모리 낭비가 될 가능성이 있음
    // 성능면에서 유리
    lazy var myProfiles = [UIImage(named: "a"),UIImage(named: "b"),UIImage(named: "e"),UIImage(named: "c"),UIImage(named: "d"),UIImage(named: "f")]
    
    // computed property (계산)
    // 변수 선언 후 변수가 만들어지는 logic을 써야함
    var isAdult: Bool { // -> get은 생략 불가
        if age > 19 {
            return true
        }
        return false
    }
    
    // email -> 보안 -> 암호화된 값으로 사용한다 (항상)
    var _email = ""
    var email: String {
        get{
            return _email
        }
        set{
            _email = newValue.hash.description
        }
    }
    
}

let myInfo = MyInfo()

myInfo.email = "abc@naver.com"
myInfo.email

myInfo.age = 26
myInfo.name = "lee"
myInfo.isAdult // 값을 입력할 수 없고, 사용할 수만 있다.

myInfo.myProfiles // -> 이때 생성

print(myInfo.age)
