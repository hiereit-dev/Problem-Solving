import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var answer = [0,0]
    var stack = [String]()
    
    var prev = words[0].suffix(1)
    var pass = true
    for (i, w) in words.enumerated() {
        if i == 0 { 
            stack.append(w)
            continue
        }
        if w.count == 1 { pass = false }
        if prev != w.prefix(1) { pass = false }
        if stack.contains(w) { pass = false }
        
        if !pass {
            answer[0] = (i % n) + 1
            answer[1] = (i / n) + 1
            break
        }
        prev = w.suffix(1)
        stack.append(w)
    }
    
    return answer
}