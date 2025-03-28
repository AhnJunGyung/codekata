import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    /*
    Set에 완전탐색으로 모든 값 넣기
    */
    
    var result: Set<Int> = []

    for i in numbers.indices {
        for j in i + 1..<numbers.count {
            result.insert(numbers[i] + numbers[j])
        }
    }
    
    return Array(result.sorted())
}