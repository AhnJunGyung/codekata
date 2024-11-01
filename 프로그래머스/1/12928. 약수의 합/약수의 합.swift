func solution(_ n:Int) -> Int {
    var sum: Int = 0
    var i: Int = 1
    
    while n >= i {
        if n%i == 0 {
            sum += i
        }
        i+=1
    }
    
    
    return sum
}