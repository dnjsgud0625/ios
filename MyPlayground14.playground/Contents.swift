import UIKit

//Collection Type

//Dictionary
//Key와 Value로 구성되며 Key는 index처럼 직접 접근할 수 있는 값이다.
//Value에도 원하는 값을 직접 넣을 수 있으며
//Key와 Value는 한 쌍으로 이루어진다.

var Street = [String : Any]()

Street["Route 302"] = 1
Street["Route 66"] = 2
Street["Route 35"] = "3rd Street"

Street

Street["Route 2"] //Dictionary에서는 없는 값이 들어가도 nil이 출력되 크러쉬가 발생X

Street["Route 35"] = 3

Street

Street["Route 66"] = nil

Street

Street.keys
