import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    /*
    1. 도난당한 학생과 여벌을 가진 학생이 동일하면 상쇄
    2. lost 보다 reserve가 -1인 학생이 빌려줌 -> 없으면 reserve가 +1인 학생에게 빌림 -> 카운트 +1
    */
    
    var result = n - lost.count
    var lostStudent = Set(lost)
    var spareGymClothes = Set(reserve)
    
    // 도난당한 학생과 여벌을 가진 학생이 일치하는 경우
    for studentNum in lostStudent {
        if spareGymClothes.contains(studentNum) {
            result += 1
            spareGymClothes.remove(studentNum)
            lostStudent.remove(studentNum)
            
            continue
        }
    }
         
    for studentNum in lostStudent.sorted() {        
        // 도난당한 학생 번호보다 1작은 학생이 있는 경우
        if spareGymClothes.contains(studentNum - 1) {
            result += 1
            spareGymClothes.remove(studentNum - 1)
            lostStudent.remove(studentNum)

            continue
        }

        // 도난당한 학생 번호보다 1큰 학생이 있는 경우
        if spareGymClothes.contains(studentNum + 1) {
            result += 1
            spareGymClothes.remove(studentNum + 1)            
            lostStudent.remove(studentNum)

            continue
        }
    }
    
    return result
}