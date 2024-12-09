import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result: [Int] = []
    
    //배열을 i~j 까지 자른 후 sort로 오름차순 정렬
    //정렬된 배열에서 k번째 요소 result배열에 append
    
    for i in commands {
        var temporaryArray = Array(array[i[0]-1...i[1]-1])
        temporaryArray.sort()
        result.append(temporaryArray[i[2] - 1])
    }
    
    return result
}