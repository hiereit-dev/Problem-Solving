import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var answer = [0, 0]
    while s != "1" {
        answer[0] += 1
        answer[1] += (s.filter{$0 == "0"}.count)
        s = toBinary(s.filter{$0 == "1"}.count)
    }
    return answer
}

func toBinary(_ n: Int) -> String {
    var n = n
    var answer = ""
    while n > 0 {
        answer += String(n%2)
        n /= 2
    }
    return answer.map{String($0)}.reversed().joined()
}