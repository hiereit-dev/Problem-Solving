import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var a = A.sorted()
    var b = B.sorted {$0 > $1}
    
    var answer1 = zip(a, b).map {$0.0 * $0.1}.reduce(0, +)
    
    a = A.sorted {$0 > $1}
    b = B.sorted()
    var answer2 = zip(a, b).map {$0.0 * $0.1}.reduce(0, +)

    return min(answer1, answer2)
}