import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    /*
    1. 명예의전당 배열 생성 & 배열 크기가 k일 때까지 append & 오름차순 정렬
    2. 그때마다 명예의전당 minimum을 result 배열에 append
    3. 명예의전당 (1)배열 개수가 k이고, (2)점수가 명예의전당 첫번째 요소보다 크면 첫번째요소를 삭제하고 점수를 append
    */
    
    var result: [Int] = []
    var hallOfFame: [Int] = []

    for point in score {
                
        if hallOfFame.count < k {
            hallOfFame.append(point)
        } else {
            hallOfFame.sort()
            
            if hallOfFame[0] < point {
                hallOfFame.remove(at: 0)
                hallOfFame.append(point)
            }
        }
        
        if let minimum = hallOfFame.min() {
            result.append(minimum)
        }
    }
    
    
    return result
}