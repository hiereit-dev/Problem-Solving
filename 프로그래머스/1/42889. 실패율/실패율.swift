import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic = [Int: Double]()
    var n = stages.count
    var players = [Int: Int]()
    
    for i in stages {
        if players[i] != nil {
            players[i]! += 1
        } else {
            players[i] = 1
        }
    }
    
    
    for step in 1...N {
        let stepPlayers = players[step] ?? 0
        if n == 0 {
            dic[step] = 0.0
            continue
        }
        dic[step] =  Double(stepPlayers) / Double(n)
        n -= stepPlayers
    }
    
    var answer = [Int]()
    for (k,v) in dic.sorted {$0.1 == $1.1 ? $0.0 < $1.0 : $0.1 > $1.1} {
        answer.append(k)
    }
    
    return answer
}
