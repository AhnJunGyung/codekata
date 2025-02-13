import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    
    var rankDic = [String: Int]()
    var currentRank = players
    
    for (rank, player) in players.enumerated() {
        rankDic[player] = rank
    }
        
    for player in callings {
        
        if let playerRank = rankDic[player] {
            let prevPlayer = currentRank[playerRank - 1]
        
            currentRank[playerRank - 1] = player
            currentRank[playerRank] = prevPlayer

            rankDic[player] = playerRank - 1
            rankDic[prevPlayer] = playerRank
        }
    }
    
    return currentRank
}