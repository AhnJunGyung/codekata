func solution(_ n:Int, _ m:Int) -> [Int] {
    
    /*
    1. n과 m의 약수 뽑아내기
    2. 최대공약수 구하기
    3. n과 m중 큰 수의 배수를 기준으로 n과 m 모두 만족하는 배수 찾기
    */
    
    var minValue = min(n, m)
    var maxValue = max(n, m)
    
    var result: [Int] = []
    
    //최대공약수
    for i in (1...minValue).reversed() {
        print(i)
        if n % i == 0, m % i == 0 {
            result.append(i)
            break
        }
    }
    
    //최소공배수
    var count = 1
    while (maxValue * count) % minValue != 0 {
        count += 1
    }
    
    result.append(maxValue * count)
    
    return result
}