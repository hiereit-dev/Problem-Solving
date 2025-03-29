import Foundation

func solution(_ n:Int) -> [[Int]] {
    var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
    let directions = [(0,1), (1,0), (0,-1), (-1,0)] // 우, 하, 좌, 상
    var directionIndex = 0
    var row = 0, col = 0

    for num in 1...(n * n) {
        matrix[row][col] = num
        let nextRow = row + directions[directionIndex].0
        let nextCol = col + directions[directionIndex].1
        
        if nextRow < 0 || nextRow >= n || nextCol < 0 || nextCol >= n || matrix[nextRow][nextCol] != 0 {
            directionIndex = (directionIndex + 1) % 4
        }
        
        row += directions[directionIndex].0
        col += directions[directionIndex].1
    }
    
    return matrix
}