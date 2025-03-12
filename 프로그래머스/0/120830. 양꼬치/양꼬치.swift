import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    
    return n >= 10 ? 12000 * n + 2000 * (k - n/10) : 12000 * n + 2000 * k
}