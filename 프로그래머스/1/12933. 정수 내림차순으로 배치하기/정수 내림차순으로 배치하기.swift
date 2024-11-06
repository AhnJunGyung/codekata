func solution(_ n:Int64) -> Int64 {
    
    var array: Array<Int64> = []
    var origin: Int64 = n
    
    //n을 배열에 넣기
    while origin > 0 {
        array.append(Int64(origin % 10))
        origin /= 10
    }
    
    array.sort(by: >)
    
    var str: String = ""

    //String 상태에서 하나로 연결
    for i in 0..<array.count {
        str += String(array[i])
    }
    
    return Int64(str)!
}