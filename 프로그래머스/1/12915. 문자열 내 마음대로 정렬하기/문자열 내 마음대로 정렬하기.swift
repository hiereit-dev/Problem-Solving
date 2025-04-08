func solution(_ strings:[String], _ n:Int) -> [String] {
    var arr = strings.map {$0.map{String($0)}}.sorted { (lhs, rhs) in
        if lhs[n] == rhs[n] {
            return lhs.joined() < rhs.joined()
        }
        return lhs[n] < rhs[n]
    }
    return arr.map {$0.joined()}
}