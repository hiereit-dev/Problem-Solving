import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var score = score.sorted { $0 > $1}
    var answer = 0

    for i in 0..<(score.count/m) {
        var p = Array(score[(i*m)..<((i+1) * m)])[m - 1]
        answer += (p * m)
    }
    
    return answer
}