import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    
    var answer = [(Int, Int)]()
    
    for i in 0..<wallpaper.count {
        let line = wallpaper[i].map {String($0)}
        for j in 0..<line.count {
            if line[j] == "#" {
                answer.append((i, j))
            } else { continue }
        }
    }
    
    var lux = wallpaper.count
    var luy = wallpaper[0].count
    var rdx = 0
    var rdy = 0
    
    for a in answer {
        if a.0 < lux {
            lux = a.0
        }
        
        if a.0 > rdx {
            rdx = a.0
        }
        
        if a.1 < luy {
            luy = a.1
        }
        
        if a.1 > rdy {
            rdy = a.1
        }
    }
    
    
    return [lux, luy, rdx + 1, rdy + 1]
}