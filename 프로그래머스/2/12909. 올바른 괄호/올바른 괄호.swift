import Foundation

func solution(_ s:String) -> Bool
{
    var stack = [String]()
    var count = 0
    
    for brace in s {
        if brace == "(" {
            stack.append("(")
        } else {
            count += 1
            if stack.isEmpty { continue }
            stack.removeLast()
            count -= 1
        }
    }
    
    return (count == 0 && stack.isEmpty)
}