import Foundation

func solution(_ a:String, _ b:String) -> String {
    
    let aArr = Array(a.map { String($0) }.reversed())
    let bArr = Array(b.map { String($0) }.reversed())
    var carry = 0
    var i = 0
    var answer = [String]()
    while true {
        if i == aArr.count || i == bArr.count {
            break
        }
        
        if let num1 = Int(aArr[i]), let num2 = Int(bArr[i]) {
            answer.append(String((num1 + num2 + carry) % 10))
            carry = (num1 + num2 + carry) > 9 ? 1 : 0
        }
        i += 1
    }
    
    
    if i < aArr.count {
        while true {
            if i == aArr.count {
                break
            }
            if let num = Int(aArr[i]) {
                answer.append(String((num + carry) % 10))
                carry = (num + carry) > 9 ? 1 : 0
            }
            i += 1
        }
    } else if i < bArr.count {
        while true {
            if i == bArr.count {
                break
            }
            if let num = Int(bArr[i]) {
                answer.append(String((num + carry) % 10))
                carry = (num + carry) > 9 ? 1 : 0
            }
            i += 1
        }
    } 
    answer.append(carry == 1 ? "1" : "")
    
    return answer.reversed().joined()
}