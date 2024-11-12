func solution(_ phone_number:String) -> String {
    var character = Array(phone_number)
    
    for i in 0..<character.count - 4 { character[i] = "*" }
    
    return String(character)
}