import UIKit

// Extension
// 확장
// struct, class, enum, protocol

extension Int {
    var oddOreven: String {
        if self%2 == 0 {
            return "짝수"
        }
        return "홀수"
    }
}

3.oddOreven
4.oddOreven

// UIcolor
// maincolor1 = xxx
// maincolor2 = xxx
// maincolor3 = xxx

extension UIColor {
    class var mainColor1: UIColor {
        UIColor(red: 50/255, green: 70/255, blue: 120/255, alpha: 1)
    }
    
}

var button = UIButton()

//button.titleLabel?.textColor = UIColor().mainColor1
// -> class var로 선언 시 인스턴스 필요 X
button.titleLabel?.textColor = UIColor.orange
button.titleLabel?.textColor = .orange
button.titleLabel?.textColor = .mainColor1 // class var로 선언하였으므로 축약 가능

