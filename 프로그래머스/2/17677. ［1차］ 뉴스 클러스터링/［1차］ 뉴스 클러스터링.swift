func solution(_ str1:String, _ str2:String) -> Int {
    
    var arr1 = makeTwoWordsArray(str1)
    var arr2 = makeTwoWordsArray(str2)
    var dup = 0
    var total = arr1.count + arr2.count
    
    for w in arr1 {
        if let index = arr2.firstIndex(of: w) {
            arr2.remove(at: index)
            dup += 1
        }
    }
    
    if total == 0 { return 65536 }
    
    return Int(Double(dup) / Double(total - dup) * Double(65536))
}

func makeTwoWordsArray(_ s: String) -> [String] {
    var strArr = s.map{String($0)}
    var result = [String]()
    for (i, str) in strArr.enumerated() {
        if i == strArr.count - 1 { break }
        let s1 = strArr[i]
        let s2 = strArr[i+1]
        if s1.isSingleLetter && s2.isSingleLetter {
            result.append("\(s1.lowercased())\(s2.lowercased())")
        }
    }
    return result
}

extension String {
    var isSingleLetter: Bool {
        return self.count == 1 && self.first?.isLetter == true
    }
}