import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var stack = [Int]()
    var answer = [Int]()
    var item = score[0]
    
    for s in score {
        stack.sort()
        if stack.count == k {
            if let lowestScore = stack.first {
                if lowestScore < s {
                    stack.removeFirst()
                    stack.insert(s, at: 0)
                    stack.sort()
                }
                if let kScore = stack.first {
                    answer.append(kScore)    
                }
            }
        } else {
            stack.append(s)
            stack.sort()
            if let kScore = stack.first {
                answer.append(kScore)    
            }
        }
    }
    return answer
}