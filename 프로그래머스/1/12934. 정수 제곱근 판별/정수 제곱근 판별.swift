func solution(_ n:Int64) -> Int64 {
    var answer = -1
    if n == 1 { return 4 }
    for i in 1...n/2 {
        if n / i == i && n % i == 0 { 
            answer = Int(i)
            break
        }
    }
    return Int64(answer) == -1 ? -1 : Int64((answer + 1) * (answer + 1))
}