import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
    
    var boxes = [[Int]]()
    
    for i in 0..<(n%w == 0 ? n / w : (n/w) + 1) {
        var temp = [Int]()
        for j in 0..<w {
            temp.append((i * w) + j < n ? (i * w) + j + 1 : 0)
        }
        boxes.append(i % 2 == 0 ? temp : temp.reversed())
    }
    boxes = boxes.reversed()

    var boxIndex = (0,0)
    for i in 0..<boxes.count {
        for j in 0..<boxes[0].count {
            if boxes[i][j] == num {
                boxIndex = (i, j)
                break
            }
        }
    }
    
    var answer = (0..<boxIndex.0).filter {boxes[$0][boxIndex.1] != 0}.count
                  
    return answer + 1
}