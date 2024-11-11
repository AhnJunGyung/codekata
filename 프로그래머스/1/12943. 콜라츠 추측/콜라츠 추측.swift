func solution(_ num:Int) -> Int {
    var calculate = num
    var repeatCount = 0
    
    while calculate > 1 {//2. 결과로 나온 수에 같은 작업을 1이 될 때까지 반복합니다. 
        
        //1-1. 입력된 수가 짝수라면 2로 나눕니다. 
        if calculate % 2 == 0 { calculate /= 2 }
        else { //1-2. 입력된 수가 홀수라면 3을 곱하고 1을 더합니다. 
            calculate *= 3
            calculate += 1
        }
        
        repeatCount += 1
        
        // 작업 500번 반복 & 1이 되지 않은 경우
        if repeatCount >= 500 && calculate != 1 { return -1 }
    }
    
    return repeatCount
}