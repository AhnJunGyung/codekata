import Foundation

func solution(_ new_id:String) -> String {
    
    var id = new_id
    
    //1단계 - 소문자 치환
    id = id.lowercased()
    
    //2단계 - 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거
    let specialChar = Array("~!@#$%^&*()=+[{]}:?,<>/")
    
    for char in specialChar {
        id = id.replacingOccurrences(of: String(char), with: "")
    }
    
    //3단계 - 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    
    //4단계 - 마침표(.)가 처음이나 끝에 위치한다면 제거합니다.
    var dotCheck = Array(id)
    
    if dotCheck[0] == "." { dotCheck.removeFirst() }
    if dotCheck.count > 0, dotCheck[dotCheck.endIndex - 1] == "." { dotCheck.removeLast() }
    
    id = String(dotCheck)

    // 5단계 - new_id가 빈 문자열이라면, new_id에 "a"를 대입
    if id.count == 0 { id = "a" }
    
    // 6단계 - 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자 모두 제거.
    // 만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문자를 제거.
    if id.count >= 16 { 
        var arr = Array(id)
        arr.removeSubrange(15...)
        id = String(arr)
    }
    dotCheck = Array(id)

    if dotCheck.count > 0, dotCheck[dotCheck.endIndex - 1] == "." { dotCheck.removeLast() }
    
    id = String(dotCheck)
    
    // 7단계 - new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 붙임.
    while id.count <= 2 {
        var arr = Array(id)
        id = id + String(arr[arr.endIndex - 1])
    }
    
    return id
}