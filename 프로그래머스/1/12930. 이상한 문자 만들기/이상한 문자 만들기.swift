func solution(_ s:String) -> String {
    var i = 0
    var answer = ""
    var sList = s.split(separator: " ")
    
    for str in s {
        if str == " " {
            answer += " "
            i = 0
        } else {
            answer += i % 2 == 0 ? str.uppercased() : str.lowercased()
            i += 1
        }
    }
    
    return answer
}