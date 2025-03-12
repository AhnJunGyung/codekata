import Foundation

func solution(_ sides:[Int]) -> Int {
    
    var count = 0
    
    /*
    긴 변 < 짧은 변 + 나머지 변
    나머지 변의 최대 길이 = 긴 변
    
    -규칙-
    sides의 긴 변이 가장 긴 경우 구해지는 경우가 n일 경우, 나머지 한 변의 경우는 n-1
    
    */
    
    if let maxValue = sides.max(), let minValue = sides.min() {
        
        var n = maxValue
        
        while maxValue < minValue + n {
            n -= 1
            count += 1
        }
    }
    
    return 2 * count - 1
}