import Foundation

func solution(_ n:Int) -> Int {
    var x: Int = 2
    
    while n != x {
        if n % x == 1{
            return x
        }
        x += 1
    }
    
    return 0
}