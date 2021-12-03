import UIKit

// Collection Types
// 집합 타입

// Array
// Swift는 강타입이다

var a_Names = Array<String>() // 타입을 명시해주어야함
var a_Ages = [Int]() // Int타입으로 선언

a_Names.append("John")
a_Names.append("Kim")
a_Names.append("Chris")
a_Names.append("Alen")

// 방어코드
// 안전한 코딩 스타일을 추구해야함
// a_Names[4] -> 앱 크래쉬

let idx = 4
if a_Names.count > idx {
    a_Names[idx]
}
a_Names = a_Names + ["Ho", "ronaldo"]
//a_Names.append(contentsOf: ["Ho","ronaldo"])

a_Names.removeFirst() // 첫번째 삭제
a_Names.removeLast() // 마지막 삭제
a_Names.remove(at: 3) //3번째 삭제

a_Names.insert("hihi", at: 2)

for name in a_Names{
    print(name + "님")
}

for (index, name) in a_Names.enumerated() {
    print(index,name)
}
