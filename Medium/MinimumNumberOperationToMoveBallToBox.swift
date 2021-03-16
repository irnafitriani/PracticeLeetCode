//Minimum Number of Operations to Move All Balls to Each Box

class Solution {
    func minOperations(_ boxes: String) -> [Int] {
        var arrayStep = [Int]()
        let arrayBoxes = boxes.map { Int(String($0)) ?? 0 }
        
        for i in 0..<arrayBoxes.count {
            var step = 0
            for j in 0..<arrayBoxes.count {
                if i != j {
                    if arrayBoxes[j] > 0 {
                        let tempStep = abs(i-j)
                        step += tempStep
                    }
                }
            }
            arrayStep.append(step)
        }
        return arrayStep
    }
}
