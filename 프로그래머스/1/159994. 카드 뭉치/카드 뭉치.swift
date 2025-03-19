import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    /*
    1. goal의 값을 카드 1, 2와 비교
    2. 단어가 있는 cards가 있으면 해당 cards goal의 index 1 증가. 없으면 증가 X. 다른 cards 비교
    2-1. 단어가 있는 cards 없으면 "No" return
    3. goal의 단어가 모두 충족되면 "Yes" return
    */
    var cards1Index = 0
    var cards2Index = 0
    
    for word in goal {
                
        if cards1Index < cards1.count, word == cards1[cards1Index] {
            cards1Index += 1
            continue
        } 
        
        if cards2Index < cards2.count, word == cards2[cards2Index] {
            cards2Index += 1
            continue
        }
        
        return "No"
    }
        
    return "Yes"
}