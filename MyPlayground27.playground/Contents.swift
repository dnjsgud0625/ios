import UIKit

// Deinitialization
// 해제

var a: Int? = 10
a = nil

class Game {
    var score = 0
    var name = ""
    var round: Round?
    
    init(){
        print("game init")
    }
    deinit{
        print("game deinit")
    }
}

class Round { //게임의 정보가 없을 경우 가치가 없어짐
    weak var gameInfo: Game? //Game에서 참조 -> 이중참조
    //만약 weak를 사용하면 Game이 deinit이 되면 Round 또한 deinit이 된다.
    var lastRound = 10
    var roundTime = 45
    
    deinit {
        print("round deinit")
    }
}

var game: Game? = Game()
var round: Round? = Round()

round?.gameInfo = game // 이중참조를 할 경우 메모리해제가 안됨
game?.round = round // 하지만 티가 안나서 신경쓰지 않고 넘어가는 경우가 있어 유의

game = nil // -> 메모리 해제가 안됨(이중참조를 할 경우)
round = nil // 하지만 종속적인 참조에 weak로 선언할 경우 정상적으로 메모리가 해제가 된다.
