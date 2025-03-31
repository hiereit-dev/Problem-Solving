func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var answer = [[Int]]()
    
    for (a1, a2) in zip(arr1, arr2) {
        var temp = [Int]()
        for i in 0..<a1.count {
            temp.append(a1[i] + a2[i])
        }
        answer.append(temp)
    }
    return answer
}