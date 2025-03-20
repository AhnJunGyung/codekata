import Foundation

func solution(_ ingredient:[Int]) -> Int {
    
    /* 1 : 빵 
       2 : 야채
       3 : 고기
    
    빵 / 야채 / 고기 / 빵 : 1, 2, 3, 1
    
    (1)
    배열 첫번째 요소부터 검색. 
    순서가 1, 2, 3, 1이면 1231 제거 & 카운트 +1
    검색 index가 배열 개수 - 4 보다 크면 break
    ------ 틀림(실패 & 시간초과) --------
    
    (2)
    스택 사용해서 스택에 1,2,3,1 쌓이면 1231 제거하고 카운트 +1
    */

    var count = 0
    var stack: [Int] = []
    
    for data in ingredient {
        stack.append(data)

        // if stack.count >= 4 && stack.suffix(4) == [1, 2, 3, 1] {
        //     stack.removeLast(4)
        //     count += 1
        // }
        if stack.count >= 4 &&
            stack[stack.count - 4] == 1 &&
            stack[stack.count - 3] == 2 &&
            stack[stack.count - 2] == 3 &&
            stack[stack.count - 1] == 1 {

            stack.removeLast(4)
            count += 1
        }
    }

    return count
}