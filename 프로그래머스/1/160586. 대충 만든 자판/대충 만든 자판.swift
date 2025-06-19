import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    
    /*
    자판 개수 : 1~100
    자판 할당 : 1개 이상. 반복 할당 포함
    
    각각의 키에서 target과 일치하는 index가 가장 작은 횟수를 저장
    */
    
    var result: [Int] = []
    
    for target in targets {
        
        var count = 0
        
        let arr = Array(target)
        
        for char in arr {
            
            let mapped = keymap.compactMap { $0.firstIndex(of: char)?.utf16Offset(in: $0) }
            
            if let min = mapped.min() { 
                count += min + 1
            } else {
                count = -1 
                break
            }
            
        }
        
        result.append(count)
    }
    
    
    return result
}