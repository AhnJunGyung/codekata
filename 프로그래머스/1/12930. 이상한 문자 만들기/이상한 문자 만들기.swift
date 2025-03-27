func solution(_ s:String) -> String {
    
    /*
    인덱스로 구분
    짝수 : 대문자
    홀수 : 소문자
    
    * 단어별로 짝 홀수 인덱스 판단 필요(공백 없이)
    
    1. 공백 제거후 각각의 단어를 배열로 만듦
    2. 대소문자 처리
    3. 하나의 문자열로 합쳐 리턴
    */
    
    var array = s.components(separatedBy: " ")
    var result = ""
    
    for word in array {
        for (index, char) in word.enumerated() {
            if index % 2 == 0 {
                result += String(char).uppercased()
            } else {
                result += String(char).lowercased()
            }
        }
        
        result += " "
    }

    result.removeLast()
    
    return result
}