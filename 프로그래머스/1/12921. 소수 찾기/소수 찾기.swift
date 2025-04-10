import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    var numArr = Array(repeating: true, count: n + 1)
    numArr[1] = false
    
    for i in 2..<Int(sqrt(Double(n))) + 1 {
        if numArr[i] {
            var j = 2
            while i * j <= n {
                numArr[i * j] = false
                j += 1
            }
        }
    }
    
    for i in 1...n {
        if numArr[i] {
            answer += 1
        }
    }
    
    return answer
}