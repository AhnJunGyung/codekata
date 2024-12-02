import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    let sToArray = Array(s)
    var stack = Stack()
    
    for i in 0..<s.count {
        
        if stack.count() < 1 {
            stack.push(sToArray[i])
        } else {
            if stack.last() == "(", sToArray[i] == ")" {
                stack.pop()
            } else {
                stack.push(sToArray[i])
            }
        }
    }
    
    if stack.count() == 0 {
        ans = true
    }
    
    return ans
}

class Stack {
    
    var stack: [Character] = []

    func pop() {
        stack.removeLast()
    }

    func push(_ value: Character) {
        stack.append(value)
    }
    
    func count() -> Int{
        return stack.count
    }
    
    func last () -> Character {
        return stack[stack.count - 1]
    }
    
}