import Foundation

func solution(_ s:String) -> Int {
    let numDict = ["zero": "0", "one":"1","two":"2","three":"3","four":"4","five":"5","six":"6", "seven":"7","eight":"8","nine":"9"]
    var answer = ""
    var temp = ""
    
    for ch in s {
        if ch.isNumber {
            answer += String(ch)
        } else {
            temp += String(ch)
            if let num = numDict[String(temp)] {
                temp = ""   
                answer += String(num)
            }
        }
    }
    
    return Int(answer)!
}