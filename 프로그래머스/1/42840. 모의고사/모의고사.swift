import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    /*
    수포자별 찍는 방식대로 정답 개수 체크
    하나하나 카운트 하고 어떻게 비교할지? -> Dictionary 사용?
    */
    var result: [Int] = []
    
    let no1 = [1, 2, 3, 4, 5]
    let no2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let no3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var dic: [Int: Int] = [1: 0, 2: 0, 3: 0]
    
    for i in 0..<answers.count {
        if no1[i % no1.count] == answers[i] { dic[1]! += 1 }
        if no2[i % no2.count] == answers[i] { dic[2]! += 1 }
        if no3[i % no3.count] == answers[i] { dic[3]! += 1 }
    }
    
    let maxValue = max(dic[1]!, dic[2]!, dic[3]!)
    
    if dic[1]! == maxValue { result.append(1) }
    if dic[2]! == maxValue { result.append(2) }
    if dic[3]! == maxValue { result.append(3) }
    
    return result.sorted()
}