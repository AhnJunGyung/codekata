import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    
    var result = 0
    
    func pirodo(_ hp: Int, _ check: inout [Bool], _ count: Int) {
        result = max(result, count)
        
        for i in 0..<dungeons.count {
            if !check[i] && hp >= dungeons[i][0] {
                check[i] = true
                pirodo(hp - dungeons[i][1], &check, count + 1)
                check[i] = false
            }
        }
    }
    
    var check: [Bool] = Array(repeating: false, count: dungeons.count)
    pirodo(k, &check, 0)
    
    return result
}