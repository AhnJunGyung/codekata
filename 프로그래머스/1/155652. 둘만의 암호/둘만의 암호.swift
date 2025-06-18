import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    var answer = ""
    
    for char in s {
        var count = 0
        var currentIndex = alphabet.firstIndex(of: char)!
        
        while count < index {
            
            if currentIndex + 1 == 26 {
                currentIndex = 0
            } else {
                currentIndex += 1
            }

            if !skip.contains(alphabet[currentIndex]) {
                count += 1
            }
            
            if count == index { answer += String(alphabet[currentIndex]) }
        }
        
    }

    return answer
}