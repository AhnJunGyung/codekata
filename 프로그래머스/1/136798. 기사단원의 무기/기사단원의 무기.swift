import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var result = 0
    
    for num in 1...number {
        var count = 0
        let sqrtNum = Int(Double(num).squareRoot())

        for i in 1...sqrtNum {
            if num % i == 0 {
                count += (i * i == num) ? 1 : 2
            }
            if count > limit {
                count = power
                break
            }
        }
        
        result += count
    }
    
    return result
}