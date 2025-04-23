import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var answer = 1
    
    var clotheDict = [String: Int]()
    for clothe in clothes {
        clotheDict[clothe[1], default: 0] += 1
    }
    
    for (key, value) in clotheDict {
        answer *= (value + 1)    
    }
    
    return answer - 1
}