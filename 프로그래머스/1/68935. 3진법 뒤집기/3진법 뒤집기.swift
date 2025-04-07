import Foundation

func solution(_ n:Int) -> Int {
    var num3Str = make3FormNumString(n: n).map { String($0) }.reversed()
    var answer = 0
    var base = 1
    for s in num3Str {
        if let num = Int(s) {
            answer += (base * num)
            base *= 3
        }
    }
    
    return answer
}

func make3FormNumString(n: Int) -> String {
    var n = n
    var answer = ""
    
    while n > 0 {
        answer += String(n%3)
        n /= 3
    }
    
    return answer
}