func solution(_ n: Int, _ m: Int, _ section: [Int]) -> Int {
    // 만약 section이 비어 있으면 칠할 필요 없음
    if section.isEmpty { return 0 }

    var count = 0
    var lastPainted = 0
    
    for s in section {
        if s > lastPainted {
            count += 1
            lastPainted = s + m - 1
        }
    }
    
    return count
}