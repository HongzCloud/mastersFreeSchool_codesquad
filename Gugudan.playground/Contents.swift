import UIKit

var gugudan = [Int].init(repeating: 0, count: 9)
var index = 0

for i in gugudan {
    // 계산 결과를 배열에 저장
    gugudan[index] = 2 * (index+1)
    index += 1
}

for i in gugudan {
    //계산 결과를 화면에 출력
    print(i)
}

//서브루틴 만들기
//루틴이란? 반복적으로 어떤 일을 할 때의 통상적인 순서와 방법이다.
//서브루틴이란? 메인루틴을 보조해주는 루틴
/*
 루틴이라는 단어가 운동루틴, 공부루틴, 컴퓨터언어에서의 루틴 등 각각 큰 개념은 같지만 조금씩 다를수 있다.
 예를들면 swift에서의 서브루틴은 반복해서 사용되도록 만들어진 일련의 코드들로 반환값이 없는 함수로 표현 한다. 어떤 언어는 반환값이 있을 수도
 */
//선언부(callee)
func gugu(number: Int) {
    for i in 1...9 {
        print("\(number) * \(i) = \(number * i)")
    }
    
}
//호출부(caller)
gugu(number: 2)
gugu(number: 3)
gugu(number: 4)
gugu(number: 5)
gugu(number: 6)
gugu(number: 7)
gugu(number: 8)
gugu(number: 9)
