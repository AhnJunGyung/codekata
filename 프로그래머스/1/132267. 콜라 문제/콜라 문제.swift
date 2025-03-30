import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    /*
    n을 a로 나눈 나머지 병도 계속 더해서 사용
    */
    var bottles = n
    var result = 0
    
    while bottles / a != 0 {
        result += bottles / a * b
        bottles = (bottles % a) + (bottles / a) * b
    }
    
    return result
}