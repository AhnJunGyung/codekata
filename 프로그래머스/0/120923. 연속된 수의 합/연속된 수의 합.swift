import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    
    /*
    규칙 : result의 중간값이 total/num 과 동일하거나 비슷
    
    num이 홀수 일 경우 : 시작값 = 중간값 - num/2
    num이 짝수 일 경우 : 
    
    */
    
    var result: [Int] = []
    
    let middleValue = total/num
    
    var start = 0
    
    // num이 홀수인 경우
    if num % 2 != 0 {
        start = middleValue - num / 2
    } else { // num이 짝수인 경우
        start = middleValue - ((num / 2) - 1) 
    }
    
    for i in 0..<num {
        result.append(start)
        start += 1
    } 
    
    return result
}