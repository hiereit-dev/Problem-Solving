import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    var answer = Array(repeating: 0, count: schedules.count)
    
    for i in 0..<timelogs.count {
        let s = schedules[i]
        let startHour = s / 100
        let startMin = s % 100
        let totalMin = startHour * 60 + startMin + 10
        let endTime = (totalMin / 60) * 100 + (totalMin % 60)
        
        for (j, t) in timelogs[i].enumerated() {
            if (j + startday - 1) % 7 == 5 || (j + startday - 1) % 7 == 6 { continue } else {
                if t > endTime {
                    answer[i] = -1
                    break
                }   
            }
        }
    }
    
    return answer.filter{ $0 != -1 }.count
}