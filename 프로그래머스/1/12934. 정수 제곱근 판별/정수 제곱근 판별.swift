func solution(_ n:Int64) -> Int64 {
    var x = 1
    // x의 제곱이 n보다 클 경우 -1 리턴
    // x의 제곱이 n일 경우 x+1의 제곱 리턴
    while x * x <= n {
        if x * x == n { return Int64((x + 1) * (x + 1)) }
        x += 1
    }
    
    return -1
}