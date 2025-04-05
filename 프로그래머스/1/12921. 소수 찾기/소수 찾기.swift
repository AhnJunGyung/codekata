func solution(_ n:Int) -> Int {
    
    /*
    시간초과 해결 : 계산 줄이기 -> 2로 나뉘는 숫자들은 배열에 포함시키지 않기 (실패)
    
    에라토스테네스의 체 : 2부터 시작해서 특정 수의 배수를 지워나가는 방식의 알고리즘
    */
    
    var arr = Array(repeating: true, count: n + 1)
    arr[0] = false
    arr[1] = false
    
    for i in 2...n {
        if arr[i] { // 지워지지 않은 숫자인 경우
            // j의 배수들을 false로 만듦
            for j in stride(from: i * 2, through: n, by: i) {
                arr[j] = false
            }
        }
    }

    return arr.filter { $0 }.count
}