import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    /*
    Dictionary 사용
    photo에 포함된 name의 점수를 더해 배열에 순서대로 입력 후 return
    */
    
    var result: [Int] = []
    var dictionary: [String: Int] = [:]
    
    for i in 0..<name.count {
        dictionary[name[i]] = yearning[i]
    }
    
    for data in photo {
        
        var sum = 0
        
        for name in data {
            if let point = dictionary[name] {
                sum += point
            }
        }
        
        result.append(sum)
    }
    
    return result
}