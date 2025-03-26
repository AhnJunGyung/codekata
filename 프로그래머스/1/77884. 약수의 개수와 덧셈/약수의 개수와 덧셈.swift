import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    /*
    약수를 어떻게 구한담? -> 1부터 정수까지 나눠지는 숫자들을 set에 저장 -> 카운트
    */
    
    var result = 0
    
    for integer in left...right {
        var intSet: Set<Int> = []
        
        for num in 1...integer {
            if integer % num == 0 { intSet.insert(num) }
        }
        
        if intSet.count % 2 == 0 { 
            result += integer
        } else {
            result -= integer
        }
    }
    
    return result
}