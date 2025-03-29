func solution(_ phone_number:String) -> String {
    return (0..<phone_number.count - 4).map {_ in "*"}.joined() + phone_number.suffix(4)
}