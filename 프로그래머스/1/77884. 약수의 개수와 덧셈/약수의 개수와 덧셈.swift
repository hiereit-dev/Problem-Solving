import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    (left...right).forEach { num in
        if getYaksoo(n: num) % 2 == 0 {
            answer += num
        } else {
            answer -= num
        }
    }
    return answer
}

func getYaksoo(n: Int) -> Int {
    return (1...n).filter{n % $0 == 0}.count
}