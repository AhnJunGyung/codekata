import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
//     var result = 0
    
//     for i in 0..<a.count {
//         result += a[i] * b[i]
//     }
    
    // return result
    //return a.map{ $0 * (b.map { $0 }) }.reduce(0)
    
    return (0..<a.count).map{a[$0] * b[$0]}.reduce(0, +)
}