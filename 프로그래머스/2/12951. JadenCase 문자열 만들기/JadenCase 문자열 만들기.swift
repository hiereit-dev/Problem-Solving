func solution(_ s:String) -> String {
    
    var answer = ""
    var stack = ""
    for i in s {
        if i == " " { 
            if stack.count > 0 {
                answer += stack
                stack = ""
            }
            answer += String(i)
        } else {
            if stack.count == 0 {
                stack += i.isNumber ? String(i) : String(i.uppercased()) 
            } else {
                stack += String(i.lowercased())    
            }
        }
    }
    
    return stack.count > 0 ? answer + stack : answer
}