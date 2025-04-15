import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var types = [["R","T"], ["C","F"], ["J","M"], ["A","N"]]
    var sortedTypes = types.map { $0.sorted() }
    var dic = ["R":0, "T":0, "C":0, "F":0,"J":0, "M":0, "A":0, "N":0]
    
    for (s, choice) in zip(survey, choices) {
        var sMap = s.map { String($0) }
        if choice >= 4 {
            dic[sMap[1], default: 0] += (choice - 4)
        } else {
            dic[sMap[0], default: 0] += (4 - choice)
        }
    }
    
    var answer = ""
    for i in 0..<types.count {
        if let type1 = dic[types[i][0]], let type2 = dic[types[i][1]] {
            if type1 == type2 {
                answer += sortedTypes[i][0]
            } else {
                answer += type1 > type2 ? types[i][0] : types[i][1]
            }
        }
    }
    
    return answer
                                  
}