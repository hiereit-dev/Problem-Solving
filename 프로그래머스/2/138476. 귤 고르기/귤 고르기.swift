import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var tanDic = [Int: Int]()
    var answer = [Int]()
    
    for t in tangerine {
        tanDic[t, default: 0] += 1
    }
    
    var sortedTangerineDic = tanDic.sorted { $0.1 > $1.1 }
    for (k, v) in sortedTangerineDic {
        let tangerines = Array(repeating: k, count: v)
        answer.append(contentsOf: tangerines)
    }
    
    return Set(Array(answer[..<k])).count
}