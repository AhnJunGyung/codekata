func solution(_ n:Int) -> String {
    return (1...n).lazy.map({ $0 % 2 == 0 ? "박" : "수" }).reduce("", + )
}

// func solution(_ s:String) -> String {
//     let array: [Character] = Array(s)
//     let middleCount = array.count / 2
        
//     return array.count % 2 == 0 ? String(array[middleCount - 1]) + String(array[middleCount]) : String(array[middleCount])
// }