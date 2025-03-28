import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    /*
    가로, 세로 관계없이 정렬
    가장 큰 값들로 곱
    */
    
    var copy = sizes
    var left = 0
    var right = 0
    
    for i in copy.indices {
        copy[i].sort()
    }
    
    for i in copy.indices {
        for j in copy[i].indices {
            if j == 0 {//left
                if copy[i][j] > left { left = copy[i][j] }
            } else {//right
                if copy[i][j] > right { right = copy[i][j] }
            }
        }
    }
    
    return left * right
}