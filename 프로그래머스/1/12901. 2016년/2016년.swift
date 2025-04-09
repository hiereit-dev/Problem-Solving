func solution(_ a:Int, _ b:Int) -> String {
    var daysOfMonth = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var dayArr = ["FRI","SAT","SUN","MON","TUE","WED","THU"]
    
    var days = (0..<a).reduce(0) {$0 + daysOfMonth[$1]} + b
    return dayArr[(days % 7) == 0 ? 6 : (days % 7) - 1]
}