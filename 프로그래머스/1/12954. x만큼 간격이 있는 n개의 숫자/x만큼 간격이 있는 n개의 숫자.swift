func solution(_ x:Int, _ n:Int) -> [Int64] {
    var array: [Int64] = []
    
    for i in 1...n{
        array.append(Int64(x * i))
    }
    
    return array
}