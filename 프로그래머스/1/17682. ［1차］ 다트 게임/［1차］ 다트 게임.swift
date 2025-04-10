func solution(_ dartResult:String) -> Int {
    
    var command = [String]()
    var temp = ""
    
    for s in dartResult {
        if s.isNumber {
            if temp == "" {
                temp += String(s)
            } else {
                if let num = Int(temp) {
                    temp += String(s)
                } else {
                    command.append(temp)
                    temp = String(s)
                }
            }
        } else {
            temp += String(s)
        }
    }
    command.append(temp)
    
    var answer = Array(repeating: 0, count: 3)
    for (i, cmd) in command.enumerated() {
        var number = ""
        for s in cmd.map { String($0) } {
            if Character(s).isNumber {
                number += s
            } else {
                if let n = Int(number) {
                    switch s {
                        case "S": answer[i] = n
                        case "D": answer[i] = n * n
                        case "T": answer[i] = n * n * n
                        case "*": 
                            if i - 1 >= 0 {
                                answer[i-1] *= 2
                            }
                            answer[i] *= 2
                        case "#": 
                            answer[i] *= -1
                        default: break
                    }
                }
            }
        }
    }
    
    return answer.reduce(0, +)
}