import Foundation

func solution(_ topping: [Int]) -> Int {
    var leftTopping = [Int:Int]()
    var rightTopping = [Int:Int]()
    
    var answer = 0
    
    for t in topping {
        rightTopping[t, default: 0] += 1
    }
    
    for t in topping {
        leftTopping[t, default: 0] += 1
        
        if let count = rightTopping[t] {
            if count == 1 {
                rightTopping.removeValue(forKey: t)
            } else {
                rightTopping[t] = count - 1
            }
        }
        
        if leftTopping.count == rightTopping.count { answer += 1}
    }

    
    return answer
}
