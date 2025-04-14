import Foundation

func solution(_ citations:[Int]) -> Int {
    
    /*
    특정값(h) 이상의 값과 이하의 값이 동일해지는 값(h) 찾기
    
    -> 내림차순 정렬 후 해당 index(1부터 시작)의 값 이상인 최대 index값 찾기
    
    */
    var h = 0

    var sortedArr = citations.sorted(by: >)
    
    for i in 0..<sortedArr.count {
        let index = i + 1
        if sortedArr[i] >= index { h = index }
    }
    
    return h
}