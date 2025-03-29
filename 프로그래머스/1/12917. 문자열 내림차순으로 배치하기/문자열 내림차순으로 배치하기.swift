func solution(_ s:String) -> String {
    return s.map {String($0)}.sorted {$0 > $1}.joined()
}