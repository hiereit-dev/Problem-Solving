func solution(_ n:Int) -> Int {
    var a = 1
    var b = 2
    
    if n == 1 { return a }
    if n == 2 { return b }
    
    for _ in 3...n {
        let temp = (a + b) % 1234567
        a = b
        b = temp
    }
    
    return b
}