import Foundation

func solution(_ s:String) -> Int {
    var s = s
    var i = 0
    var answer = 0
    while i < s.count {
        if isRightStr(s) { answer += 1 }
        i += 1
        
        var sMap = s.map{String($0)}
        let firstStr = sMap[0]
        sMap = Array(sMap[1...])
        sMap.append(firstStr)
        s = sMap.joined()
    }
    
    return answer
}

func isRightStr(_ s: String) -> Bool {
    
    var stack = [String]()
    for ch in s {
        stack.append(String(ch))
        if stack.count >= 2 {
            let lastTwoItem = stack.suffix(2).joined()
            if lastTwoItem == "()" || lastTwoItem == "[]" || lastTwoItem == "{}" {
                stack.removeLast()
                stack.removeLast()
            }
        }
    }
    
    return stack.isEmpty
}