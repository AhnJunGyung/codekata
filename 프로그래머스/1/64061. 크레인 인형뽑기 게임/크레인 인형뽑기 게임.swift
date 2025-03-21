import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    /*    
    1. moves 위치 값에 맞게 board[0][moves - 1] 이 0인지 확인
    2. 0인 경우 board[1][0] 체크. 또 0이면 board[2][0] 체크 ...
    3. 0이 아니면 배열에 넣고 board에서는 0으로 변경
    4. 배열 개수가 2 이상이고 먼저 들어간 수와 비교해서 같으면 둘 제거 -> 정답 카운트 + 2
    */
    var boardCopy = board
    var stack: [Int] = []
    var count = 0

    for move in moves {
                
        for i in 0..<board.count {
                        
            if boardCopy[i][move - 1] == 0 { continue } 
            

            stack.append(boardCopy[i][move - 1])
            boardCopy[i][move - 1] = 0      
            
            var suffix = stack.suffix(2)
            
            if stack.count >= 2, stack[stack.count - 1] == stack[stack.count - 2] {
                stack.removeLast(2)
                count += 2
            }
            
            break
        }
    }
    
    return count
    
}