import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var nums = ["0","1","2","3","4","5","6","7","8","9"]
    var dupNums = [String]()
    
    for n in nums {
        let xCount = X.filter{ String($0) == n }.count
        let yCount = Y.filter{ String($0) == n }.count
        
        if xCount != 0 && yCount != 0 {
            dupNums += Array(repeating: n, count: min(xCount, yCount))
        }
    }
    
    if dupNums.isEmpty { return "-1" }
    
    return dupNums.filter{$0 == "0"}.count == dupNums.count ? "0" : dupNums.sorted{$0 > $1}.joined()
}