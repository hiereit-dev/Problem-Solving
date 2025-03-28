import Foundation

func solution(_ board:[[Int]]) -> Int {
    let n = board.count
    var answer = Array(repeating: Array(repeating: true, count: n), count: n)
    
    if n == 1 { return board[0][0] == 1 ? 0 : 1}
    
    for i in 0..<n {
        for j in 0..<n {
            if board[i][j] != 1 {
                if i == 0 && j == 0 {
                    if board[i][j+1] == 1 { answer[i][j] = false }
                    if board[i+1][j] == 1 { answer[i][j] = false }
                    if board[i+1][j+1] == 1 { answer[i][j] = false }
                } else if i == 0 && j == n-1 {
                    if board[i][j-1] == 1 { answer[i][j] = false }
                    if board[i+1][j] == 1 { answer[i][j] = false }
                    if board[i+1][j-1] == 1 { answer[i][j] = false }
                } else if i == n-1 && j == 0 {
                    if board[i-1][j] == 1 { answer[i][j] = false }
                    if board[i-1][j+1] == 1 { answer[i][j] = false }
                    if board[i][j+1] == 1 { answer[i][j] = false }
                } else if i == n-1 && j == n-1 {
                    if board[i-1][j] == 1 { answer[i][j] = false }
                    if board[i-1][j-1] == 1 { answer[i][j] = false }
                    if board[i][j-1] == 1 { answer[i][j] = false }
                } else if i == 0 && j > 0 && j < n-1 {
                    if board[i][j-1] == 1 { answer[i][j] = false }
                    if board[i+1][j-1] == 1 { answer[i][j] = false }
                    if board[i+1][j] == 1 { answer[i][j] = false }
                    if board[i+1][j+1] == 1 { answer[i][j] = false }
                    if board[i][j+1] == 1 { answer[i][j] = false }
                } else if i == n-1 && j > 0 && j < n-1 {
                    if board[i][j-1] == 1 { answer[i][j] = false }
                    if board[i-1][j-1] == 1 { answer[i][j] = false }
                    if board[i-1][j] == 1 { answer[i][j] = false }
                    if board[i-1][j+1] == 1 { answer[i][j] = false }
                    if board[i][j+1] == 1 { answer[i][j] = false }
                }  else if j == 0 && i > 0 && i < n-1  {
                    if board[i-1][j] == 1 { answer[i][j] = false }
                    if board[i-1][j+1] == 1 { answer[i][j] = false }
                    if board[i][j+1] == 1 { answer[i][j] = false }
                    if board[i+1][j+1] == 1 { answer[i][j] = false }
                    if board[i+1][j] == 1 { answer[i][j] = false }
                } else if j == n-1 && i > 0 && i < n-1 {
                    if board[i-1][j] == 1 { answer[i][j] = false }
                    if board[i-1][j-1] == 1 { answer[i][j] = false }
                    if board[i][j-1] == 1 { answer[i][j] = false }
                    if board[i+1][j-1] == 1 { answer[i][j] = false }
                    if board[i+1][j] == 1 { answer[i][j] = false }
                } else {
                    if board[i][j-1] == 1 { answer[i][j] = false }
                    if board[i-1][j-1] == 1 { answer[i][j] = false }
                    if board[i-1][j] == 1 { answer[i][j] = false }
                    if board[i-1][j+1] == 1 { answer[i][j] = false }
                    if board[i][j+1] == 1 { answer[i][j] = false }
                    if board[i+1][j+1] == 1 { answer[i][j] = false }
                    if board[i+1][j] == 1 { answer[i][j] = false }
                    if board[i+1][j-1] == 1 { answer[i][j] = false }
                }
            }
        }
    }
    
    return (n*n) - answer.joined().filter{$0 == false}.count - board.joined().filter{$0 == 1}.count
}