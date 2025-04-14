import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    /*
    진도 100% -> 서비스 반영
    
    큐 사용
    1. progresses의 첫번째 요소 <= days * speeds 가 되는 days 구하기
    2. 현재 days로 배포 가능한 요소 remove 후 count += 1
    3. 배포되지 않으면 days +1 후 반복
    */
    
    var queueProgresses = progresses
    var queueSpeeds = speeds
    var result: [Int] = []
    var days = 1
    var count = 0
    
    while !(queueProgresses.count < 1) {
        
        if 100 <= queueProgresses[0] + (days * queueSpeeds[0]) { //배포 가능
            queueProgresses.removeFirst()
            queueSpeeds.removeFirst()
            count += 1
        } else { //배포 불가능
            if count >= 1 {
                result.append(count)
                count = 0
            } else{
                days += 1
            }
        }
    }
    
    result.append(count)
    
    return result
}