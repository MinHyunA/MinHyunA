

import Foundation

//print("숫자 입력:", terminator: "")
//var a = readLine()!  //실행 터미널에서 텍스트 입력을 받는다
//                    // 입력받은 내용은 String
//
//print("a:\(a)")
var tot = 0
while true {
    
    print("숫자를 입력하세요 x 입력시 종료")
    print("입력:", terminator: "")
    
    var tt = readLine()!
    
    if tt == "x"{
        break
    }
    
    var no = Int(tt)
    tot += no!
}

print("결과 : \(tot)")
