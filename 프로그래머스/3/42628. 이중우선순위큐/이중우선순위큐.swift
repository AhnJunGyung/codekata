import Foundation

func solution(_ operations:[String]) -> [Int] {

    var result: [Int] = []

    for operation in operations {
        
        for value in operation {
            var op = operation
            
            if value == "I" {
                op.removeFirst()
                op.removeFirst()
                
                if let number = Int(op) {
                    result.append(number)
                }
                break
            } else if value == "D"{
                op.removeFirst()
                op.removeFirst()
                
                if result.count > 0 {
                    if let number = Int(op) {
                        // result가 비어있지 않은 경우
                        // -1일 경우 최소값 삭제 / 1일 경우 최대값 삭제
                        if number == -1 {
                            if let minimumValue = result.min() {
                                if let minimumIndex = result.firstIndex(of: minimumValue) {
                                    result.remove(at: minimumIndex)
                                }
                            }
                        } else if number == 1 {
                            if let maximumValue = result.max() {
                                if let maximumIndex = result.firstIndex(of: maximumValue) {
                                    result.remove(at: maximumIndex)
                                }
                            }
                        }
                    }
                }
                break
            } 
        }
    }
    
    if result.count == 0 {
        result = [0, 0]
    } else {
        if let max = result.max() {
            if let min = result.min() {
                result = [max, min]
            }
        }
    }
    
    return result
}