func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    let min = arr.min()!
    if let index = arr.firstIndex(of: min) {
        arr.remove(at: index)
    }
    
    return arr.isEmpty ? [-1] : arr
}