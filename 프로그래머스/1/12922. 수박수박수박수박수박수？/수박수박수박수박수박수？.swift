func solution(_ n:Int) -> String {
    let su = "수"
    let park = "박"
    var answer = ""
    
    for i in 1...n {
        answer += i % 2 == 0 ? park : su
    }
    
    return answer
}