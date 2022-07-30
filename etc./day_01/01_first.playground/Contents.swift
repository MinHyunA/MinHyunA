import Cocoa

print(5+3)

//화면에 출력하는 명령어 - 주석 : 설명이나 코드와 관련없는 메모 한줄 작성
/* -> 여러 줄의 주석 구간 시작
 
 주석 구간
 구간 안에 기재 된 모든 내용은 주석으로 처리
 
 주석 구간 끝-> */

print("안녕하세요")
// 숫자는 따옴표가 필요 없지만, 문자열은 따옴표 안에 기재해야 함

print("나폴레옹은 '어? 이 산이 아닌데?'라고 생각했다")
// 작은 따옴표는 영향을 주지 않는다.
print("나폴레옹은 \'어? 이 산이 아닌데?\'라고 생각했다")
//이게 더 맞는 표현 방법이다.

print("나폴레옹은 \"불이야!\"라고 외쳤다.")
//제어문자 : \" -> 쌍따옴표로 표시

print("아기상어\t 뚜루루 뚜루\n 귀여운\t 뚜루루 뚜루\n 바닷속\t 뚜루루 뚜루\n 아기상어\t 뚜루루 뚜루")
// \t : 줄 바꾸기

print("❌")
//특수기호 edit>emoji&symbols

print("宋賢雅")
//한자 표시 : 한글 치고 > alt+enter

print("여긴 참나무숲", terminator: "->")
print("장수풍뎅이와", terminator: "\t")
print("사슴벌레가 살지", terminator: "\n")
print("낮엔 숨어있다", terminator: "")
print("밤엔 살금살금", terminator: "\n\n\n\n")
print("신나게 놀러다녀")
//terminator를 사용하여 print의 종결단을 바꾼다

