import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    /*
    배열 nums에서 3개의 수를 더해 소수가 되는 경우 구하기 -> 노가다?
    */
    for i in 0..<nums.count - 2 {//첫번째 숫자
       for j in i + 1..<nums.count - 1 {//두번째 숫자
           for k in j + 1..<nums.count {//세번째 숫자
               let sum = nums[i] + nums[j] + nums[k]
               
               for n in 2..<sum {
                   if sum % n == 0 { break }
                   if sum % n != 0, n == sum - 1 { answer += 1 }
               }
           }
       }
    }

    return answer
}