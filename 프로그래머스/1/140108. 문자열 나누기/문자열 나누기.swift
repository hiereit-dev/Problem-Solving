import Foundation

func solution(_ s:String) -> Int {
    
    
    var xStr = ""
    var notXStr = ""
    var xCount = 0
    var notXCount = 0
    
    var word = ""
    var sMap = s.map{String($0)}
    var x = sMap[0]
    
    var answer = [String]()
    for (i, str) in sMap.enumerated() {
        if x == str {
            xCount += 1
        } else {
            notXCount += 1
        }
        
        word += str
        if xCount == notXCount {
            answer.append(word)
            word = ""
            if i + 1 < s.count {
                x = sMap[i + 1]
            }
        }
    }
    
    if word != "" { answer.append(word) }
    
    return answer.count
}