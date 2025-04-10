import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var alpha = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var sMap = s.map{String($0)}
    var answer = ""
    for a in sMap {
        if let alphaIndex = alpha.firstIndex(of: a) {
            var k = 0
            var idx = alphaIndex
            while true {
                if skip.contains(alpha[idx % 26]) {
                    idx = (idx + 1) % 26
                    continue
                }
                k += 1
                if k == index + 1 { break }
                idx = (idx + 1) % 26
            }
            answer += alpha[idx % 26]
        }
    }
    
    return answer
}