import Foundation

func solution(_ numbers:[Int]) -> String {
    
    var number = numbers.map{String($0)}
    var result = number.sorted { $0+$1 > $1+$0 }.joined()
    
    if result.first == "0" {
        return "0"
    }
    
    return result
}