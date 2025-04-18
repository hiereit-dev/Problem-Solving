import Foundation

func solution(_ n:Int) -> Int 
{
    var answer = 0
    var N = n
    while N != 0 {
        if N % 2 == 0 {
            N /= 2    
        } else {
            N -= 1
            answer += 1
        }
    }
    // 1, 

    return answer
}