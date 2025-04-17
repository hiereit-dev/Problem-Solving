import Foundation

func solution(_ s:String) -> Int{
    var s = s.map { String($0) }
    var stack = [String]()
    for str in s {
        if let last = stack.last, last == str {
            stack.append(str)
            stack.removeLast()
            stack.removeLast()
        } else {
            stack.append(str)
        }
    }
    
    return stack.isEmpty ? 1 : 0
    
    
}