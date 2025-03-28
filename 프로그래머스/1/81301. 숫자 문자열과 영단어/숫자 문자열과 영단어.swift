import Foundation

func solution(_ s:String) -> Int {
    
    /*
    영단어 -> 숫자 변환
    */
    let numberDic: [Int: String] = [0: "zero", 1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine"]
    
    var result = s
    
    for i in 0...9 {
        result = result.replacingOccurrences(of: numberDic[i]!, with: String(i))
    }
    
    return Int(result)!
}