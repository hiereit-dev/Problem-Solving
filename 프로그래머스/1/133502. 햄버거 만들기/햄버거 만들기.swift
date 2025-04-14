func solution(_ ingredients: [Int]) -> Int {
    var stack: [Int] = []
    var count = 0

    for ingredient in ingredients {
        stack.append(ingredient)

        if stack.count >= 4 {
            let lastFour = Array(stack.suffix(4))
            if lastFour == [1, 2, 3, 1] {
                stack.removeLast(4)
                count += 1
            }
        }
    }

    return count
}