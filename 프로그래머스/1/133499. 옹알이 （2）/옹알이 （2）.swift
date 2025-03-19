import Foundation

func solution(_ babbling:[String]) -> Int {
    
    /*
    1. babbling와 "aya", "ye", "woo", "ma" 비교
    2. 동일한 발음을 " "로 대체
    3. " " -> ""으로 대체하고 빈 값 카운트
    
    주의사항 : 연속되는 발음 X -> 안되는 케이스로 따로 분리
    */
    
    var bab = babbling
    let words = ["aya", "ye", "woo", "ma"]
    var count = 0
    
    for word in words {
        
        for i in 0..<bab.count {
            
            if !bab[i].contains(word + word) {
                bab[i] = bab[i].replacingOccurrences(of: word, with: " ")
            }
            
        }
    }
    
    for i in 0..<bab.count {
        if bab[i].replacingOccurrences(of: " ", with: "").isEmpty { count += 1 }
    }
    
    return count
}