import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0

    for i in String(n) {
        if let num = Int(String(i)) {
            answer += num
        }
    }
    
    return answer
}