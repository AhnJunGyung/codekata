import Foundation

func solution(_ food:[Int]) -> String {
    
    /*
    1. food의 index 값을 1부터 배열에 append() -> food의 요소를 2로 나눈 몫 만큼을 반복.
    2. 배열을 정답 String으로 만듦
    3. 정답 String에 0 붙이고 배열의 reverse 값 붙이기
    */
    
    var foods: [Int] = []
    var result = ""
    
    for i in 1..<food.count {
        for j in 0..<food[i] / 2 {
            foods.append(i)
        }
    }
    
    for f in foods {
        result += String(f)
    }
    
    result += "0"
    
    foods = foods.reversed()
    
    for f in foods {
        result += String(f)
    }
    
    return result
}