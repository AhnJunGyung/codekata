import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    /*
    큐 사용
    
    0. 큐 배열 bridge 생성. bridge_length.count 크기에 0으로 채움
    1. 첫번째 트럭 다리 진입
    2. 다리 위에 있는 트럭무게 + 대기 트럭 무게 <= weight 이면, 대기 트럭 다리 진입. 아니면 대기
    3. 다리 위 트럭 이동 : 배열 첫번째 값 삭제 & 맨 뒤에 0추가
    */
    
    var bridge = Array(repeating: 0, count: bridge_length)
    var truck = truck_weights
    var bridgeWeight = 0
    var time = 0
    
    while truck.count > 0 || bridge.reduce(0, +) > 0 {
        
        time += 1
        bridgeWeight -= bridge.removeFirst()
        
        if truck.count > 0 && bridgeWeight + truck[0] <= weight {
            bridge.append(truck[0])
            bridgeWeight += truck[0]
            truck.removeFirst()
        } else {
            bridge.append(0)
        }

    }
    
    return time
}