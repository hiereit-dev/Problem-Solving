import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    var bottle = n
    var answer = 0
    while bottle >= a {
        let leftBottle = bottle % a
        var emptyBottle = bottle / a
        answer += (emptyBottle * b)
        bottle = (emptyBottle * b) + leftBottle
    }
    
    return answer
}