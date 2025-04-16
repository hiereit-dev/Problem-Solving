import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                if isPrime(sum) {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}

func isPrime(_ n: Int) -> Bool {
    var isPrime = true
    for i in 2...Int(Double(n).squareRoot()) {
        if n % i == 0 { 
            isPrime = false
            break
        }
    }
    return isPrime
}