import UIKit

// Collection Types

// Set

var names = Set<String>()
names.insert("a")
names.insert("b")
names.insert("c")
names.insert("a")

names // 순서의 개념이 없고, 중첩된 값은 포함되지 않는다.

var names2: Set = ["a","b","c"]

var num1: Set = [1,2,3,4,5]
var num2: Set = [4,5,6,7,8]

// 교집합
num1.intersection(num2)

// 합집합
num1.union(num2)

// 합집합 - 교집합 (대칭차집합)
num1.symmetricDifference(num2)

// 여집합
num1.subtracting(num2)
