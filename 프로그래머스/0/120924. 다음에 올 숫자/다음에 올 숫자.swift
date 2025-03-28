import Foundation

func solution(_ common:[Int]) -> Int {
    if let a1 = common.first, let lastNum = common.last {
        let a2 = common[1]
        
        if a1 + (common.count - 1) * (a2 - a1) == lastNum {
            return a1 + common.count * (a2 - a1)
        } else if a1 * (0..<common.count-1).reduce(1) { result, _ in result * (a2/a1) } == lastNum {
            return a1 * (0..<common.count).reduce(1) { result, _ in result * (a2/a1) } 
        }
    }
    
    return 0
}