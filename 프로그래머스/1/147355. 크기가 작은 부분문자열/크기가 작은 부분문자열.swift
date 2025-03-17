import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    /*
    1. t를 char 타입 배열로 바꾼다
    2. for문으로 p길이 만큼씩 t를 분리해서 배열에 담는다. 데이터 타입은 Int로
    3. 만들어진 배열과 p를 비교
    */

    let charArray = Array(t)
    var intArray: [Int] = []
    
    // 2번 과정
    for i in 0..<charArray.count - p.count + 1 {
        
        var value = ""
        
        for j in i..<i+p.count {
            value += String(charArray[j])
        }
        
        if let intValue = Int(value) {
            intArray.append(intValue)
        }
    }
    
    // 3번 과정   
    if let pValue = Int(p) {
        return intArray.filter { $0 <= pValue }.count
    }

    return 0
}