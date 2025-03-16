import Foundation

func solution(_ dots:[[Int]]) -> Int {
    
    /*
    - 규칙 -
    1,4 와 3,8 : 2,4 차이
    9,2 와 11,6 : 2,4 차이
    
    점이 [0, 1, 2, 3] 4개 일때
    
    직선 경우의 수 3개 
    01 == 23
    02 == 13
    03 == 12
    
    정확한 기울기 찾아야함
    
    기울기 = x1 - x2 / y1 - y2
    */
    //case1 : 01 == 23
    if Double((dots[0][0] - dots[1][0])) / Double((dots[0][1] - dots[1][1])) == Double((dots[2][0] - dots[3][0])) / Double((dots[2][1] - dots[3][1]))
    {
        return 1
    }
    
    //case2 : 02 == 13
    if Double((dots[0][0] - dots[2][0])) / Double((dots[0][1] - dots[2][1])) == Double((dots[1][0] - dots[3][0])) / Double((dots[1][1] - dots[3][1]))
    {
        return 1
    }
    
        
    //case3 : 03 == 12
    if Double((dots[0][0] - dots[3][0])) / Double((dots[0][1] - dots[3][1])) == Double((dots[1][0] - dots[2][0])) / Double((dots[1][1] - dots[2][1]))
    {
        return 1
    }
    
    return 0
}