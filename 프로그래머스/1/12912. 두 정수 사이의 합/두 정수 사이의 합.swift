func solution(_ a:Int, _ b:Int) -> Int64 {
    var m = min(a, b)
    var M = max(a, b)
    
    if m == M {
        return Int64(a)
    } else {
        return Int64((m...M).reduce(0, +))
    }
    
}