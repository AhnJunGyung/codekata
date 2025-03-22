import Foundation

func solution(_ s:String) -> [Int] {
    
    /*
    1. 딕셔너리 사용 [글자: index] 형태로 저장
    2. 저장할 때 딕셔너리에 같은 글자가 있는지 체크
    3. 같은 글자가 있으면 index 차이를 딕셔너리에 저장 & 정답 배열에 append
    */
    
    var result: [Int] = []
    var dic: [Character: Int] = [:]
    
    for (index, char) in s.enumerated() {
        // 앞에 글자가 있을때
        if let frontWordIndex = dic[char] {
            dic[char] = index
            result.append(index - frontWordIndex)
        } else { // 앞에 글자가 없을때
            result.append(-1)
            dic[char] = index
        }
    }
    
    return result
}