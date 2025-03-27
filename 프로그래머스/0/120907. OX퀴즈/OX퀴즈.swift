import Foundation

func solution(_ quiz:[String]) -> [String] {
    var answer = [String]()
    for q in quiz {
        let quizArr = q.split(separator: " ")
        if let a = Int(quizArr[0]) , let b = Int(quizArr[2]) {
            let result = quizArr[1] == "+" ? a + b : a - b
            if let c = Int(quizArr[4]) {
              answer.append(c == result ? "O" : "X")  
            } 
        }
    }
    
    return answer
}