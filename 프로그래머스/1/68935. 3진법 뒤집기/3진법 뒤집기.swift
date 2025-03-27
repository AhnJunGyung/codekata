import Foundation

func solution(_ n: Int) -> Int {
    
    var num = n
    var str = ""

    // 3진법 변환
    while num > 0 {
        str += String(num % 3)
        num /= 3
    }

    // 뒤집힌 3진법 값을 10진법으로 변환
    return Int(str, radix: 3)!
}