import UIKit

// Structure
// 구조체

// Value Type
struct ImageType { // Struncture은 상속이 되지 않는다.
    var type = ""
}

var imageType1 = ImageType() // Struncture의 경우 참조가 아닌 복제
var imageType2 = imageType1
var imageType3 = imageType2

imageType1.type = "jpg" //값이 복제된 것이므로 서로 영향 X
imageType2.type = "png"
imageType3.type = "jpeg"

imageType1.type
imageType2.type
imageType3.type

class MyInfo {
    var myAge = 0
}

var info1 = MyInfo()
var info2 = info1
var info3 = info2

info1.myAge = 20
info1.myAge
info2.myAge
info3.myAge //클래스를 서로 참조하였으므로 모두 20이 나온다.
