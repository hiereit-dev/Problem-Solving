import Foundation

func solution(_ new_id:String) -> String {
    var temp = new_id.map {$0.lowercased() }.joined()
    
    var answer = ""
    for s in temp {
        if s == "-" || s == "." || s == "_" || s.isNumber || s.isLetter { answer += String(s) }
    }
    
    temp = ""
    var pointCount = 0
    for s in answer {
        if s == "." {
            pointCount += 1
        } else {
            if pointCount >= 1 {
                temp += ("." + String(s))
                pointCount = 0
            } else {
                temp += String(s)
            }
        }
    }
    answer = temp
    
    if answer.prefix(1) == "." {
        answer = Array(answer.map {String($0)}[1...]).joined()
    }
    
    if answer.suffix(1) == "." {
        answer = Array(answer.map {String($0)}[..<answer.count]).joined()
    }
    
    if answer == "" {
        answer = "a"
    }
    
    if answer.count > 15 {
        let lastItem = answer.map {String($0)} [14]
        answer = Array(answer.map { String($0) }[...13]).joined()
        if lastItem != "." { answer += lastItem }
    }
   
    if answer.count <= 2 {
        let lastItem = answer.suffix(1)
        while answer.count < 3 {
                answer += lastItem
        }
    }
    return answer
}