import UIKit

// Class - Inheritance
// 상속
class GameData {
    var homeScore = 0
    var awayScore = 0
    func presentScore() -> String {
        return homeScore.description + " : " + awayScore.description
    }
    final func presentScore2() -> String { // final로 설계 시 Override 불가
        return homeScore.description + " : " + awayScore.description
    }

}


class Soccer: GameData {
    var time = 0
}

class Baseball: GameData {
    var round = 0
    override func presentScore() -> String {
        return homeScore.description + " vs " + awayScore.description
    }
}

class Basketball: GameData {
    var quarter = 0
//    override func presentScore2() -> String {
//        return homeScore.description + " 대 " + awayScore.description
//    }
}

let soccer = Soccer()
soccer.awayScore = 1
soccer.homeScore = 2
soccer.time = 45
soccer.presentScore()


let baseball = Baseball()
baseball.homeScore = 10
baseball.awayScore = 5
baseball.round = 5
baseball.presentScore()
