import UIKit
import Darwin

// Eumerations

// enum
// 타입분류

// 도서관 -> 항목 -> 소설, 문제집, 만화책

// 분류만 하고싶다. + 값
enum BookType {
    case fiction(title: String, price: Int, year: Int)
    case comic(title: String, price: Int, year: Int)
    case workbook(title: String, price: Int, year: Int)
}

extension BookType {
    var typename: String {
        switch self {
        case .comic:
            return "comic"
        case .fiction:
            return "fiction"
        case.workbook:
            return "workbook"
        default:
            ""
        }
        
    }
}

var books: BookType?
var bc = BookType.comic
var save = [BookType]()

func savebook(book: BookType) {
    save.append(book)
}

savebook(book: .comic(title: "aaa", price: 5000, year: 2012))
savebook(book: .fiction(title: "bbb", price: 6000, year: 2014))
savebook(book: .workbook(title: "ccc", price: 7000, year: 2016))
savebook(book: .comic(title: "ddd", price: 8000, year: 2018))

for book in save{
    
    if case let BookType.comic(title, _, _) = book {
        print(title, book.typename)
    }
    
    
//    switch book {
//    case let .comic(_, price, _):
//        print(price)
//
//    case let .fiction(title, _, _):
//        print(title)
//
//    default:
//        break
//
//   }
}

//func savebook(bk: BookType){
//    save.append(bk)
//}
//
//func loadbook(bk: BookType) -> [BookType] {
//    var tempbooks = [BookType]()
//
//    for item in save {
//        if item == bk {
//            tempbooks.append(item)
//        }
//    }
//    return tempbooks
//}
//
//savebook(bk: .fiction)
//savebook(bk: .comic)
//savebook(bk: .comic)
//savebook(bk: .workbook)
//save
//
//loadbook(bk: .workbook)
