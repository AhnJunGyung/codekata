import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var stageCounts = Array(repeating: 0, count: N + 2)
    
    for stage in stages {
        stageCounts[stage] += 1
    }
    
    var players = stages.count
    var failureRates: [(stage: Int, failure: Double)] = [] // Dictionary 대신 튜플 사용
    
    for i in 1...N {
        let failed = stageCounts[i]
        let failureRate = players > 0 ? Double(failed) / Double(players) : 0.0
        failureRates.append((stage: i, failure: failureRate))

        players -= failed  // 다음 스테이지 계산을 위해 남은 사용자 수 업데이트
    }
    
    return failureRates
        .sorted {
            if $0.failure == $1.failure {
                return $0.stage < $1.stage
            } else {
                return $0.failure > $1.failure
            }
        }.map { $0.stage }
}