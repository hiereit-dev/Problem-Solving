import Foundation

func solution(_ elements:[Int]) -> Int {
    var answer = Set<Int>()
    var circular = elements + elements
    var n = elements.count
    
    var prefixSum = [0]
    for num in circular { 
        prefixSum.append(prefixSum.last! + num)
    }
    
    for i in 1...n {
        for j in 0..<n {
            let end = i + j
            let sum = prefixSum[end] - prefixSum[j]
            answer.insert(sum)
        }
    }
    
    return answer.count
}