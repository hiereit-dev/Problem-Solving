import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var players = players
    var dic = [String: Int]()
    
    for i in 0..<players.count {
        dic[players[i]] = i
    }
    
    for c in callings {
        if let pIndex = dic[c] {
            let prevPlayer = players[pIndex - 1]
            let prevIndex = pIndex - 1
            players[prevIndex] = c
            players[pIndex] = prevPlayer
            
            dic[c] = pIndex - 1
            dic[prevPlayer] = pIndex
        }
    }
    
    return players
}