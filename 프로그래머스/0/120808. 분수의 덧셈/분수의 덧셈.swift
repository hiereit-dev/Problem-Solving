import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    var resultDenom = 0
    if denom1 == denom2 {
        resultDenom = denom1
    } else {
        for i in (2...denom1*denom2) {
            if (i % denom1 == 0) && (i % denom2 == 0) {
                resultDenom = i
                break
            }
        }
    }
    var number1Base = resultDenom / denom1
    var number2Base = resultDenom / denom2 
    
    var resultNumer = (numer1 * number1Base) + (numer2 * number2Base)
    
    var answer = [resultNumer, resultDenom]
    
    var minNum = answer.min()!
    
    while true {
        if minNum == 1 { break }
        else if (answer[0] % minNum == 0) && (answer[1] % minNum == 0) { 
            answer[0] /= minNum
            answer[1] /= minNum
            break
        }
        minNum -= 1
    }
    
    
    return answer
}