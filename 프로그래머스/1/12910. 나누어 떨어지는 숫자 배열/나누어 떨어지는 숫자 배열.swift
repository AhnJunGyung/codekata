func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: Array<Int> = []

    for i in 0..<arr.count {
        if arr[i] % divisor == 0 { result.append(arr[i]) }
    }
    
    if result.count == 0 { result.append(-1) }
    else { result.sort(by: < ) }
    
    return result
}