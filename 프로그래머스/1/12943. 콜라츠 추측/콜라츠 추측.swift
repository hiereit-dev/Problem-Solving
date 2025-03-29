func solution(_ num:Int) -> Int {
    var num = num
    var count = -1
    if num == 1 { return 0}
    while num != 1 {
        num = num % 2 == 0 ? (num / 2) : (3 * num) + 1
        count += 1
        if count > 500 {
            count = -1
            break
        }
    }
    return count == -1 ? -1 : count + 1
}