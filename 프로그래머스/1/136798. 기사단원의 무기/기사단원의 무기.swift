import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    
    /*
    1. 1~number 까지 약수의 개수(= 공격력) 구하기
    2. limit에 넘는 경우 power로 교체
    */
    
    var result = 0
    
    for num in 1...number {
        
        var count = 0
        let sqrtNum = Int(Double(num).squareRoot()) //제곱근 구하기

        for i in 1...sqrtNum {// 약수 계산
            
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