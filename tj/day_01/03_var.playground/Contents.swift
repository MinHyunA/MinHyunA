import Cocoa

var x = 0   //변수 선언 및 초기화 : 변수를 만들고 초깃값 0을 대입
            // 대입 : 변수 공간에 값을 복사하여 넣는다
//5 + 3 = x
x = 5 + 3   //연산 후 결과값 대입

print(x)    //변수 호출 : 변수 공간에 들어있는 값을 복사하여 가져옴

//변수명 규칙
//var x = 20 변수명 중복 선언 불가
//var 123 = 10 변수명 숫자로 시작 불가
var a10 = 10
//var +  = 7 변수명 특수기호 사용 불가
var __ = 20  // _ 사용가능
//var var = 30  예약어 사용불가
//var a b = 20 띄어쓰기 불가
var 학생번호 = 37 //사용가능하나 사용하지 말것

/*
 
bit                                             byte
                            BCD     ASCII       EBCDIC
 1      2   3   4       5   6       7           8
 2      4   8   16      32  64      128         256
 --------------------------------------------
 0(off) 00  000 0~9(10)     a~z(26) +특수기호   +부호(0:양수, 1:음수)
 1(on)  01  001             A~Z(26)
        10  010             0~9(10)
        11  011                 62
            100
            101
            110
            111

 */




