import UIKit

// generic <Type 내가 정한 임의의 타입>
// 로직을 반복해서 사용하고, 타입을 여러가지 사용할 때

// stack
// 타입을 지정해주는것이 아닌 임의의 타입
struct Mystack<MyType> where MyType: Equatable { // 정수만 사용할 때 Numeric 사용
                                                // 문자열은 StringProtocol
    var items = [MyType]()
    
    mutating func push(item: MyType) {
        items.append(item)
    }
    
    mutating func pop() -> MyType? {
        if items.isEmpty {
            return nil
        }
        return items.removeLast()
    }
}

var myStack = Mystack<String>()
myStack.push(item: "a")
myStack.pop()

var myStack2 = Mystack<Int>()
myStack2.push(item: 5)
myStack2.push(item: 6)
myStack2.pop()
myStack2.pop()


