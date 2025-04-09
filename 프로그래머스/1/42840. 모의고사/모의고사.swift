import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var p1 = [1, 2, 3, 4, 5]
    var p2 = [2, 1, 2, 3, 2, 4, 2, 5]
    var p3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var p1Score = 0
    var p2Score = 0
    var p3Score = 0
    
    for (i, ans) in answers.enumerated() {
        if p1[i % p1.count] == ans { p1Score += 1 }
        if p2[i % p2.count] == ans { p2Score += 1 }
        if p3[i % p3.count] == ans { p3Score += 1 }
    }
    
    var scores = [p1Score, p2Score, p3Score]
    var answer = [Int]()
    for (i, s) in scores.enumerated() {
        if s >= scores.max()! {
            answer.append(i + 1)
        }
    }
    return answer.sorted()
}