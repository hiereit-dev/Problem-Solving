import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var answer = arr
    for (i, q) in query.enumerated() {
        answer = i % 2 == 0 ? Array(answer[...q]) : Array(answer[q...])
    }
    return answer
}