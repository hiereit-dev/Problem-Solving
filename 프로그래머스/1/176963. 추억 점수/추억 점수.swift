import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var scoreDict = [String: Int]()
    for (n, y) in zip(name, yearning) {
        scoreDict[n] = y
    }
    
    var answer = [Int]()
    for frame in photo {
        var scoreCount = 0
        for person in frame {
            if let score = scoreDict[person] {
                scoreCount += score
            }
        }
        answer.append(scoreCount)
    }
    
    
    return answer
}