func solution(_ seoul:[String]) -> String {
    var x = 0
    for i in 0..<seoul.count {
       if seoul[i] == "Kim" { x = i } 
    }
    
    return "김서방은 \(x)에 있다"
}