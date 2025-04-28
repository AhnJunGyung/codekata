import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    
    /*
    반례
    brown: 22  yellow: 8  [10, 3]
    
    bbbbbbbbbb
    byyyyyyyyb
    bbbbbbbbbb
    
    bbbbbb
    byyyyb
    byyyyb
    byyyyb
    bbbbbb
    
    
    가로, 세로 길이가 약수에 포함되는듯?
    -카펫의 가로 길이는 세로 길이와 같거나 세로 길이보다 길다-
    squareRoot() 사용
    */
    let sum = brown + yellow
    let sqrt = Int(Double(sum).squareRoot())
    var result: [Int] = []
    
    result.append(sum / sqrt)
    result.append(sqrt)
    
    //검증 코드 필요 -> width, height에 맞는 배열 생성하고 만들어보면서 틀리면 break 맞으면 리턴
    //width, height 쌍을 약수로 미리 배열로 만들기
    // 검증 : brown = (w * 2) + (h - 2) * 2
    var tuple: [(Int, Int)] = []

    for i in 3...sqrt {
        
        if sum % i == 0 {
            if i * i == sum {
                // 가로, 세로 : i
                if (i * 2) + (i - 2) * 2 == brown {
                    return [i, i]
                }
                
            } else {
                // 가로: sum / i, 세로: i
                if ((sum / i) * 2) + (i - 2) * 2 == brown {
                    return [sum / i, i]
                }
                tuple.append((sum / i, i))
            }
        }
    }
    
    return result
}
    