import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var q = [Int]()
    var priorities = priorities
    
    var i = 0
    while priorities.filter {$0 == 0}.count != priorities.count {
        if priorities[i] >= priorities.max()! {
            priorities[i] = 0
            q.append(i)
        }
        i = (i + 1) % priorities.count
    }
    
    if let index = q.firstIndex(of: location) {
        return index + 1
    }
    
    return 0
}