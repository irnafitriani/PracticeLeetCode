// Shuffle String
class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var arrayString = s.map { String($0) }
        var arrayNumber = indices
        
        for i in 0..<arrayNumber.count {
            for j in 0..<arrayNumber.count {
                if i != j && arrayNumber[i] < arrayNumber[j] {
                    let temp = arrayNumber[i]
                    let tempString = arrayString[i]
                    arrayNumber[i] = arrayNumber[j]
                    arrayString[i] = arrayString[j]
                    arrayNumber[j] = temp
                    arrayString[j] = tempString
                }
            }
        }
        return arrayString.joined(separator: "")
    }
}
