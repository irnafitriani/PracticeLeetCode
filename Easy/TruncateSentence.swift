// 1816. Truncate Sentence

class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var result = ""
        let splitString = s.components(separatedBy: " ")
        
        if k == splitString.count {
            return s
        }
        
        for i in 0...k-1 {
            result += splitString[i]
            if i != k-1 {
                result += " "
            }
        }
        
        return result
    }
}
