import Foundation

func solution(_ n:Int) -> Int {
    var answer = -1
    for i in 1..<n {
        if n % i == 1 {
            answer = i
            break
        }
    }
    return answer
}