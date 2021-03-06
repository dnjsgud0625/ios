import UIKit

//Optional
//값이 있을수도 있고 없을수도 있다.

//옵셔널은 그냥 사용할 수 없는 경우가 많이 있음

//초기 입력값을 보고 타입을 추론하여 자동으로 인트가 지정됨
var a = 10
var b = 20

var sum = a + b //값이 30으로 출력되는 것을 확인할 수 있다.

//옵셔널은 자동으로 설정이 안되므로 직접 입력시켜 옵셔널 int형으로 선언하였다.
var c: Int? = 10
var d: Int? = 20

//var sum2 = c + d   -> ERROR

//덧셈은 옵셔널 타입일 경우 처리가 안되기 때문에
//unwrapping을 통해
//Int? 일 경우 Int 타입으로
//String? 일 경우 String 타입으로 바꾸어 주어야한다.

//coalesce
var sum2 = (c ?? 0) + (d ?? 0)
// ?? 를 사용해여 만약 c와 d의 값이 없을 경우 0으로 대체되 사용되게 한다.

//force-unwrap -> 강제로 언랩
var sum3 = c! + d!
//!를 붙임으로써 무조건 값이 있는 상태로 변형시키겠다.
//만약 값을 입력 안할 경우에는 앱이 크래쉬가 발생한다.
//입력값이 무조건 들어간다는 확신이 있다는 경우에만 사용해야한다.
