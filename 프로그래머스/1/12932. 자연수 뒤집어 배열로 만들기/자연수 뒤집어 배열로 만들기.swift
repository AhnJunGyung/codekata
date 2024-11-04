func solution(_ n:Int64) -> [Int] {
    var array: Array<Int> = []
    var temp = n
    
    while !(temp == 0) {
        array.append(Int(temp % 10))
        temp /= 10
    }
    
    return array
}