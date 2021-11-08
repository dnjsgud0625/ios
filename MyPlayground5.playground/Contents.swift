import UIKit

//Optionals(옵셔널)
//값이 있을수도 있고, 없을수도 있다.

//값이 있다.
//0은 자원을 다 쓴 상태이므로 표현의 값이 존재한다.

//값이 없다.
//NULL,nil은 아예 값이 없다.

var Age: Int? = 0
//Int 뒤에 ?를 붙이므로 값이 없는 nil을 받을 수 있는 opional type이 된다.

// 값이 없는 상태 체크 -> 를린 로직
if Age == 0{
    //alart - 나이를 입력해 주세요.
}
//0살이 입력될 경우 알람이 계속 출력되며 0살에 대한 처리 x

if Age == nil{
    //alart - 나이를 입력해 주세요.
}

var name: String? = " " //빈 스트링

//공백을 입력했을 경우 처리 x
if name == " "{
    //이름을 입력해주세요
}

if name == nil {
    //이름값이 없음.
}
