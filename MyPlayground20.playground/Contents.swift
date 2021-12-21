import UIKit

let names = ["apple", "air", "nike", "yeeze", "banana"]

//func Find(find: String) -> [String] {
//    var newnames = [String]()
//
//    for name in names {
//        if name.contains(find) {
//            newnames.append(name)
//        }
//    }
//    return newnames
//}
//
//Find(find: "a")


let containtext: (String,String) -> Bool = { name,find in
    if name.contains(find) {
        return true
    }
    return false
}

let starttext: (String,String) -> Bool = { name, find in
    if name.first?.description == find {
        return true
    }
    return false
}

func findtext(findstring: String, condition: (String,String) -> Bool) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if condition(name,findstring) {
            newNames.append(name)
        }
    }
    return newNames
}

findtext(findstring: "a", condition: containtext)
findtext(findstring: "a", condition: starttext)
