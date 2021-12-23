import UIKit

var names = ["Chris", "Alex", "Barry", "Diana"]

// sort
// 원본값이 변경됨
names.sort()

// sorted는 return값이 존재
// 원본값이 변경되지 않음
let sorted = names.sorted()

names.sort { (lhs, rhs) -> Bool in
    return lhs < rhs
}

names.sort(by: { $0 < $1 })

names.sort() { $0 < $1 }

names.sort { $0 < $1 }

names.sort(by: <)
