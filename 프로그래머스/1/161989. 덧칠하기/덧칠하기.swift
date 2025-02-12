import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    var right = 0
    var count = 0
    
    for left in section {
        if left > right {
            count += 1
            right = left + m - 1
        }
    }
    
    return count
}