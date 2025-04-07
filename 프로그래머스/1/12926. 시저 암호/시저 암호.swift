func solution(_ s:String, _ n:Int) -> String {
    var capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var alphaArr = capitals.map { String($0) }
    var answer = ""
    for i in s {
        if i == " " {
            answer += String(i)
            continue
        }
        if let index = alphaArr.firstIndex(of: i.uppercased()) {
            answer += i.isUppercase ? alphaArr[(index + n) % capitals.count] : String(Character(alphaArr[(index + n) % alphaArr.count]).lowercased())
            }
    }
    
    return answer
}