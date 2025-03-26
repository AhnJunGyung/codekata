import Foundation

func solution(_ number:[Int]) -> Int {
    
    /*
    완전탐색 -> 방법은?
    3중 for문 사용해서 풀기???
    */
    
    var count = 0
    
    for i in 0..<number.count - 2 {
        for j in i + 1..<number.count - 1 {
            for k in j + 1..<number.count {
                if number[i] + number[j] + number[k] == 0 { count += 1 }
            }
        }
    }
    
    return count
}