import Cocoa

var a = 10, b = 20 , c = 30, d = 40  //전역변수: 어떤 함수에서도 호출가능

func fn_1(aa:Int, c:Int, d:Int){ //매개변수의 영역 : 함수 내부
                    //매개변수 ==> 상수 : 대입불가
                     //전역변수와 매개변수 중첩 가능 --> 매개변수로 인식
    
    var ee = 555    //지역변수 : 영역-> 함수내부
    print("fn_1() 시작 : \(aa),\(ee), \(a), \(b), \(c), \(d)") //b : 전역변수
    
    a += 1
    ee += 1
    //aa += 1
    
    var b = 222 //전역변수와 지역변수 중첩 가능 --> 지역변수로 인식
    var d = 444 /// 전역변수 < 매개변수 < 지역변수
    print("fn_1() 끝 : \(aa),\(ee), \(a), \(b), \(c), \(d)") //b : 지역변수
}


func fn_2(){
   // print("fn_2() 시작 : \(aa),\(ee), \(a)")
    print("fn_2() 시작 : \(a), \(b), \(c), \(d)")
    
    print("fn_2() 끝 : \(a), \(b), \(c), \(d)")
}

print("메인 시작 : \(a),\(b),\(c),\(d)")

fn_1(aa:10000, c:30000 , d:40000)
fn_2()

print("메인 끝 : \(a),\(b),\(c),\(d)")
//print("메인 끝 : \(aa)")
//print("메인 끝 : \(ee)")