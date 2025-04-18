import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wantDic = [String: Int]()
    for (i, w) in want.enumerated() {
        wantDic[w] = i
    }
    
    var N = number.reduce(0, +)
    var answer = 0
    for i in 0..<discount.count - N + 1 {
        let discount10Arr = Array(discount[i..<i+10])
        var n = number
        for j in 0..<discount10Arr.count {
            if let index = wantDic[discount10Arr[j]] {
                n[index] -= 1
            }
        }
        if n.filter { $0 == 0}.count == n.count { answer += 1 }
    }
    return answer
}