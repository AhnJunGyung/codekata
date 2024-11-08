func solution(_ a: Int, _ b: Int) -> Int64 {
    var result = 0
    var small: Int = a
    var big: Int = b
    
    if a > b {
        small = b
        big = a
    }
    
    for i in small...big {
            result += i
    }
    
    return Int64(result)
}