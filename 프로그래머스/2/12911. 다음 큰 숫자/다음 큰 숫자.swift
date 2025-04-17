import Foundation

func solution(_ n:Int) -> Int
{
    var answer = n + 1
    var nOneCount = toBinary(n)
    while true {
        if nOneCount == toBinary(answer) { break }
        else { answer += 1 }
    }
    return answer
}

func toBinary(_ n: Int) -> Int {
    var n = n
    var answer = 0
    while n > 0 {
        if n%2 == 1 { answer += 1 }
        n /= 2
    }
    return answer
}