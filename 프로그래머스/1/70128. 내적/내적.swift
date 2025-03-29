import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var answer = 0
    for (i, j) in zip(a, b) {
        answer += i * j
    }
    return answer
}