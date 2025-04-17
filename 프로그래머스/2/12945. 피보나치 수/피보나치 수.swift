func solution(_ n:Int) -> Int {
    guard n > 1 else { return -1 }
    
    var F = Array(repeating: 0, count: n + 1)
    F[0] = 0
    F[1] = 1
    
    for i in 2...n {
        F[i] = (F[i-1] + F[i-2]) % 1234567
    }
    
    return F[n] % 1234567
}