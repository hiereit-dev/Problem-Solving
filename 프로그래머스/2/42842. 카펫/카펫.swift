import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let totalTiles = brown + yellow
    let temp = (1...totalTiles).filter { totalTiles % $0 == 0 }.reversed()
    var answer = 0
    
    for n in temp {
        let row = n
        let col = totalTiles / n
        if ((row * 2) + (col * 2) - 4) == brown {
            answer = row
            break
        }
    }
    
    return [answer, totalTiles / answer]
}