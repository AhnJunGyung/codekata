import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    
    /*
    사과 최대 점수 : k (1~k)
    한 상자에 담는 사과 개수 : m
    사과 한 상자의 가격 : 가장 낮은 사과 점수 (p) * m
    
    1. score 내림차순 정렬
    2. 사과 상자 계산(p * m) : m으로 나눴을때 나머지가 안나올때 까지 수행
    3. 상자 계산값 sum
    4. sum 리턴
    */
    
    let scoreCopy = score.sorted(by: >)
    var result = 0
    
    if scoreCopy.count / m == 0 {
        return 0
    } else {
        for i in 1...(scoreCopy.count / m) {
            result += scoreCopy[(i * m) - 1] * m
        }
    }

    return result
}