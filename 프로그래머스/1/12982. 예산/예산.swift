import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var b = 0
    var d = d.sorted { $1 > $0 }
    var answer = 0
    for i in 0..<d.count {
        b += d[i]
        if b > budget {
            if i < d.count {
                continue
            } else { break }
        } else if b == budget { 
            answer += 1
            break
        } else {
            answer += 1
        }
    }
    
    
    return answer
}