func solution(_ arr:[Int]) -> [Int] {
    var array: [Int] = arr
    if let minimum = arr.min() {

        if array.count == 1 { 
            array[0] = -1 
        } else {
            for i in 0..<arr.count {
                if array[i] == minimum { 
                    array.remove(at: i) 
                    break
                }
            }
        }
    }

    return array
}