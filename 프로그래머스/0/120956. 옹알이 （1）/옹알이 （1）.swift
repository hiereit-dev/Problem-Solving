import Foundation

func solution(_ babbling:[String]) -> Int {
    
    var arr = ["aya", "ye", "woo", "ma"]
    var answer = 0
    for b in babbling {
        var left = b
        for a in arr {
            left = left.replacingOccurrences(of: a, with: " ")
            if left.replacingOccurrences(of: " ", with: "").count == 0 {
                answer += 1
                break
            }
        }
    }
    return answer
}