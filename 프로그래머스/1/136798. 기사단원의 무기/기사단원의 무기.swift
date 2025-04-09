import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var knightsWeapons = [Int]()
    for n in 1...number {
        var weapons = 0
        for j in 1...(Int(sqrt(Double(n)))) {
            if j * j == n {
                weapons += 1
                continue
            }
            if n % j == 0 {
                weapons += 2
            }
        }
        knightsWeapons.append(weapons)      
    }
    
    var answer = 0
    for (i, weapon) in knightsWeapons.enumerated() {
        answer += weapon > limit ? power : weapon
    }
    
    return answer
}