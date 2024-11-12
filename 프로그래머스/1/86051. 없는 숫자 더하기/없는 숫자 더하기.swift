import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = 0
    
    for i in 1...9 { 
        result += numbers.contains(i) ? 0 : i
    }
    
    return result
}