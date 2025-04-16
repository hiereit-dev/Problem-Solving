import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    
    var friendDic = [String: Int]()
    for (i, friend) in friends.enumerated() {
        friendDic[friend] = i
    }
    
    var giftMap = Array(repeating: Array(repeating: 0, count: friends.count), count: friends.count)
    for gift in gifts {
        let giftInfo = gift.split(separator: " ")
        let sender = String(giftInfo[0])
        let receiver = String(giftInfo[1])
        
        if let i = friendDic[sender], let j = friendDic[receiver] {
            giftMap[i][j] += 1
        }
    }
    
    var giftInfo = Array(repeating: 0, count: friends.count)
    for i in 0..<friends.count {
        let sendCount = giftMap[i].reduce(0, +)
        let receiveCount = giftMap.reduce(0) { $0 + $1[i] }
        giftInfo[i] = sendCount - receiveCount
    }
    
    var answer = Array(repeating: 0, count: friends.count)
    for i in 0..<friends.count {
        for j in 0..<friends.count {
            if i == j { continue }
            
            if giftMap[i][j] == giftMap[j][i] {
                if giftInfo[i] > giftInfo[j] {
                        answer[i] += 1
                    }
            } else if giftMap[i][j] > giftMap[j][i] {
                answer[i] += 1
            }
        }
    }

    return answer.max()!
}