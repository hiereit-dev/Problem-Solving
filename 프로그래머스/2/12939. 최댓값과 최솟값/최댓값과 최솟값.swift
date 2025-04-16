func solution(_ s:String) -> String {
    var numbers = s.split(separator: " ").map { Int($0)! }
    return "\(numbers.min()!) \(numbers.max()!)"
}