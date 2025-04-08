import Foundation

func solution(_ s:String) -> [Int] {
    var sMap = s.map { String($0) }
    var stack = [String]()
    var answer = [Int]()
    
    for (i, str) in sMap.enumerated() {
        if stack.contains(str) {
            if let index = stack.lastIndex(of: str) {
                answer.append(i - index)
            }
        } else {
            answer.append(-1)
        }
        stack.append(str)
    }
    return answer
}