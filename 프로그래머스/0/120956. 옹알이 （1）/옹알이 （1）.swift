import Foundation

func solution(_ babbling:[String]) -> Int {
    
    /*
    aya, ye, woo, ma를 ""로 replace 시킨다
    
    문제점 1. "wyeoo" 에서 발음 "ye"가 중간에 있는 경우를 판별해야함 
    -> "ye"를 " "로 교체 
    -> "w oo"가 되므로 "woo"로 대체 불가하게 만듦
    */
    var array = babbling
    let words = ["aya", "ye", "woo", "ma"]
    var count = 0
    
    for i in 0..<words.count {
        
        for j in 0..<array.count {
            array[j] = array[j].replacingOccurrences(of: words[i], with: " ")
        }
    }
    
    for j in 0..<array.count {
        array[j] = array[j].replacingOccurrences(of: " ", with: "")
        
        if array[j] == "" {
            count += 1
        }
    }
    
    return count
}