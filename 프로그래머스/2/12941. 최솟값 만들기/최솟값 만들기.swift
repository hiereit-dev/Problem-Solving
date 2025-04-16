import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var a = A.sorted()
    var b = B.sorted {$0 > $1}
    
    return zip(a, b).map {$0.0 * $0.1}.reduce(0, +)
}