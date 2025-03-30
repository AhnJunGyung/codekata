func solution(_ strings:[String], _ n:Int) -> [String] {
    
    /*
    strings의 각 문자열 index n번째로 순서 비교
    */
    var result = strings
    
    return result.sorted() { 
        if Array($0)[n] == Array($1)[n] {
            return $0 < $1
        } else {
            return Array($0)[n] < Array($1)[n] 
        }
    }
}