import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    var result = 0
    
    func dfs(_ str: String, _ arr:[String] ,_ count: Int) {
        // if str == target && result == 0 {
        //     if count < result {
        //         result = count
        //     }
        // }
        
        if str == target {
            if result == 0 || count < result {
                result = count
            }
            return
        }
        
        for i in 0..<arr.count {
            if check(str, arr[i]) {
                var next = arr
                next.remove(at: i)
                dfs(arr[i], next, count + 1)
            }
        }
        
    }
    
    dfs(begin, words, 0)

    return result
}

func check(_ str:String , _ word: String) -> Bool {
    var dif = 0
    let strArray = Array(str)
    let wordArray = Array(word)
    
    for i in 0..<str.count {
        if strArray[i] != wordArray[i] {
            dif += 1
        }
    }

    return dif == 1
}