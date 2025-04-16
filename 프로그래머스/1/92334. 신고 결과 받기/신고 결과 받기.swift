import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var answer = Array(repeating: 0, count: id_list.count)
    var reportDic = [String: Int]()
    var report = Array(Set(report))
    var userDic = [String: Int]()
    
    for (i, id) in id_list.enumerated() {
        userDic[id] = i
    }
    
    for rep in report {
        let rep_user_list = rep.split(separator: " ")
        let report_user = String(rep_user_list[0])
        let black_user = String(rep_user_list[1])
        reportDic[black_user, default: 0] += 1
    }
    
    let blackDic = reportDic.filter { $0.1 >= k }
    for rep in report {
        let rep_user_list = rep.split(separator: " ")
        let report_user = String(rep_user_list[0])
        let black_user = String(rep_user_list[1])
        
        if let blackUser = blackDic[black_user] {
            if let userIndex = userDic[report_user] {
                answer[userIndex] += 1
            }
        }
    }
    
    
    return answer
}