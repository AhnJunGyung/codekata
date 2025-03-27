import Foundation

func solution(_ n:Int) -> Int {
    
    var num = n
    var str = ""
    var result = 0

    // 3진법
    while num > 0 {
        str += String(num % 3)
        num = num / 3
    }
    
    // 뒤집기
    str.reversed()
    
    num = Int(str)!
    
    // 10진법
    var count = 1
    
    if num % 10 != 0 {
        result += num % 10
        num = num / 10
    }
    
    while num > 0 {
        result += (num % 10) * Int(pow(Double(3), Double(count)))
        num = num / 10
        count += 1
    }
    
    return result
}