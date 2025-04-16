import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var locate = location
    var queue = priorities
    var max = priorities.max()
    var count = 0
    
    while queue.count > 0 {
        
        if queue[0] != max {
            queue.append(queue[0])            
            queue.removeFirst()
            
            if locate == 0 {
                locate = queue.count - 1
            } else {
                locate -= 1
            }
        } else {
            queue.removeFirst()
            count += 1
            if locate == 0 { return count }
            
            max = queue.max()
            locate -= 1
        }
    }
    
    return count
}