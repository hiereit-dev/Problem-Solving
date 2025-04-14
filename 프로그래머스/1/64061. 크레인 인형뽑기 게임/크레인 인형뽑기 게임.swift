import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var answer = 0
    var basket = [Int]()
    
    for m in moves {
        let line = (0..<board.count).map { board[$0][m-1] }
        for (i, item) in line.enumerated() {
            if item != 0 {
                board[i][m-1] = 0
                basket.append(item)
                break
            }
        }
        if basket.count >= 2 {
            if basket[basket.count - 1] != nil && basket[basket.count - 2] != nil {
               if basket[basket.count - 1] == basket[basket.count - 2] {
                basket.removeLast(2)
                answer += 2
                }    
            }
        }
    }
    
    return answer
}