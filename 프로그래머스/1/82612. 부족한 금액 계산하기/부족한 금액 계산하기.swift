import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let answer = Int64((1...count).reduce(0) { $0 + $1 * price })
    print(money, answer)
    return Int64(money) >= answer ? 0 : abs(answer-Int64(money))
}