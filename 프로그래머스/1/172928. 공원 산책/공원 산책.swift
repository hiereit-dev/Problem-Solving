import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let dirDict = ["N":(-1, 0), "E":(0, 1), "S":(1, 0), "W":(0, -1)]
    
    var park = park.map{ $0.map{String($0)}}
    var loc = (0, 0)
    for i in 0..<park.count {
        for j in 0..<park[i].count {
            if park[i][j] == "S" {
                loc = (i, j)
            }
        }
    }
    print(loc)
    for r in routes {
        let route = r.split(separator: " ") 
        if let xy = dirDict[String(route[0])], let distance = Int(route[1]) {
            let originLoc = loc
            for i in 0..<distance {
                var t = add(loc, xy)
                print(t)
                 if t.0 < 0 || t.0 > park.count - 1 || t.1 > park[0].count - 1 || t.1 < 0 {
                    loc = originLoc
                    break
                 } 
                if park[t.0][t.1] == "X" {
                    loc = originLoc
                    break
                }
                loc = add(loc, xy)   
            }
        }
    }
    return [loc.0, loc.1]
}

func add(_ a1: (Int, Int), _ a2: (Int, Int)) -> (Int, Int) {
    return ((a1.0 + a2.0), (a1.1 + a2.1))
}