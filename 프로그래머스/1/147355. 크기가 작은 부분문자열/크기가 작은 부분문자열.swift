import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var answer = 0
    for i in (0..<t.count-p.count+1) {
        if let num = Int(String(Array(t)[i..<(i+p.count)])), let pNum = Int(p) {
            if pNum >= num { answer += 1}
        }
    }
    
    
    return answer
}