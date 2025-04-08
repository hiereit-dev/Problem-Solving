import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer = [Int]()
    for c in commands {
        let i = c[0] - 1, j = c[1] - 1, k = c[2] - 1
        answer.append(Array(array[i...j]).sorted()[k])
    }
    
    return answer
}