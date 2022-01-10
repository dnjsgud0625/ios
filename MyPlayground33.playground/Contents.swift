import UIKit
import Foundation

// Higher Order Function
// 고차함수

let names = ["kim", "lee", "min", "whang"]

let names2 = names.map { name in
    name + "님"
}
// == let names2 = names.map { $0 + "님"}
names2

let name3 = names.map { name in
    name.count
}

let name4 = names.map { name in
    name.count > 3
}

// filter -> 거른다
let filtername = names.filter { (name) -> Bool in
    name.count > 3
}
filtername

// reduce 하나로 뭉친다. 통합한다
let reducename = names.reduce("aaa") { $0 + $1 }
//let reducename = names.reduce("aaa") { (first, second)  in
//    return first + second
//}
reducename

let numberArr = [1, 2, 3, 4, 5, nil, 7, nil, 9]
let sumNum = numberArr.reduce(0, { $0 + ($1 ?? 0)})
sumNum

// compactMap
let numbers = numberArr.compactMap { $0 }
//let numbers = numberArr.compactMap { (num) in
//    return num
//}
numbers

// flatmap -> n차의 데이터를 1차로 나열
let numbers2 = [[1,2,3],[4,5,6],[7,8,9]]

let flatNum = numbers2.flatMap{ $0 }
flatNum
