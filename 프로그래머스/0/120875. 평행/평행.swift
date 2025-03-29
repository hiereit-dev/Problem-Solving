import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var dots = dots
    
    let (a1, a2) = (Double(dots[0][0]), Double(dots[0][1]))
    let (b1, b2) = (Double(dots[1][0]), Double(dots[1][1]))
    let (c1, c2) = (Double(dots[2][0]), Double(dots[2][1]))
    let (d1, d2) = (Double(dots[3][0]), Double(dots[3][1]))
    
    if (a1-b1) / (a2-b2) == (c1-d1) / (c2-d2) {
        print("ab:\((a2-b2) / (a1-b1)), cd:\((c2-d2) / (c1-d1))")
        return 1
    }
    if (a1-c1) / (a2-c2) == (b1-d1) / (b2-d2) {
        print("ac:\((a1-c1) / (a2-c2)), bd:\((b1-d1) / (b2-d2))")
        return 1
    }
    if (a1-d1) / (a2-d2) == (b1-c1) / (b2-c2) {
        print("ad:\((a1-d1) / (a2-d2)), bc:\((b1-c1) / (b2-c2))")
        return 1
    }
    return 0
}