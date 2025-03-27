func solution(_ s:String) -> Bool {

    guard let _ = Int(s), s.count == 4 || s.count == 6 else {
        return false
    }
    
    return true
}