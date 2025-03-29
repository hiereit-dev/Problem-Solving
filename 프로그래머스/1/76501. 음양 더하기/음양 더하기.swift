import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer = 0
    for (a, s) in zip(absolutes, signs) {
        answer += s ? a : -a
    }
    return answer
}