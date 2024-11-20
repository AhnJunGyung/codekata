import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dictionary: [String: Int] = [:]
    var result = 1
    
    for i in 0..<clothes.count {
        if let value = dictionary[clothes[i][1]] {
            dictionary[clothes[i][1]] = value + 1
        } else {
            dictionary[clothes[i][1]] = 1
        }
    }
    
    let array = Array(dictionary.values)
    
    for i in 0..<array.count {
        result *= array[i] + 1
    }
        
    return result - 1
}