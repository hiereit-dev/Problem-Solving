func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var cache = [String]()
    var answer = 0
    
    if cacheSize == 0 { return cities.count * 5 }
    
    for city in cities {
        var city = city.lowercased()
        
        if let index = cache.firstIndex(of: city) {
            cache.remove(at: index)
            answer += 1
        } else {
            answer += 5
            if cache.count == cacheSize {
                cache.removeLast()
            }
        }
        cache.insert(city, at: 0)
    }
    return answer
}