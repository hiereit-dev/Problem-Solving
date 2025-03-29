import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

(0..<b).forEach { _ in
                 (0..<a).forEach { _ in
                    print("*", terminator: "")                 
                 }
    print()
}