import Foundation

func solution(_ numbers: String) -> Int {

    let chars = Array(numbers)
    var strArray: [[String]] = [] // 모든 경우의 수를 담을 배열
    var result = 0
    
    func backTrack(_ path: [String], _ check: inout [Bool]) {
        if !path.isEmpty {
            strArray.append(path)
        }
        
        for i in 0..<chars.count {
            if check[i] { continue } // check: true = 체크완료 / false = 미체크
            check[i] = true
            backTrack(path + [String(chars[i])], &check)
            check[i] = false
        }
    }
    
    var check = Array(repeating: false, count: chars.count)
    backTrack([], &check)
        
    var numArray = Set(strArray.map { Int($0.joined())! })
    
    for num in numArray {
        if num > 1 {
            for i in 2...num {
                if i == num { result += 1 }
                if num % i == 0 { break }
            }
        }
    }
    
    return result
}