import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    
    /*
    해시 사용
    큐 사용 : 순서 보장
    
    1. 장르별 총 수록곡 구하기
    2. 장르 별 2곡 result 배열에 담기 -> 재생횟수가 같으면 index가 작은 노래가 우선    
    */
    
    var genreTotal: [String: Int] = [:]
    var result: [Int] = []
    
    // 1.
    for (index, genre) in genres.enumerated() {        
        if let exist = genreTotal[genre] {
            genreTotal[genre] = exist + plays[index]
        } else {
            genreTotal[genre] = plays[index]
        }
    }

    // 2.
    for (genre, value) in genreTotal.sorted { $0.value > $1.value } {
        
        // 해당 장르의 수록곡과 재생수 구하기
        var indexAndPlays: [[Int: Int]] = []
        
        // genres에서 genre의 index 가져오기        
        for i in 0..<genres.count {
            if genres[i] == genre { indexAndPlays.append([i: plays[i]]) }
        }
        
        indexAndPlays = indexAndPlays.sorted { $0.values.first! > $1.values.first! && 
                                              $0.keys.first! > $1.keys.first! }
        
        // 장르 수록곡이 2곡 이상이면 재생수가 많으면서 index가 작은 순으로 수록
        // 1곡이면 그냥 append
        var count = 0
        for dic in indexAndPlays {
            if count < 2 {
                result.append(dic.keys.first!)
                count += 1
            } else {
                break
            }
        }
    }
    
    return result
}