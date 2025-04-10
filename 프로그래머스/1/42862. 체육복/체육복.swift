import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
        
    var students = Array(repeating: 0, count: n + 1)
    var lost = Set(lost.sorted())
    var reserve = Set(reserve.sorted())
    
    
    for person in lost {
        if reserve.contains(person) {
            lost.remove(person)
            reserve.remove(person)
        }
    }
    
    for i in 1...n {
        if lost.contains(i) {
            if reserve.contains(i-1) {
                reserve.remove(i-1)
                students[i] = 1
            } else if reserve.contains(i+1) {
                reserve.remove(i+1)
                students[i] = 1
            }
        } else {
            students[i] = 1
        }
    }
    return students.filter{ $0 == 1 }.count
}