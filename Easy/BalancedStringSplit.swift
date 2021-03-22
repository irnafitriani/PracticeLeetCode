//Split a String in Balanced Strings

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var result = 0
        var counterL = 0
        
        for char in s {
            if char == "L" {
                counterL += 1
            } else {
                counterL -= 1
            }
            
            if counterL == 0 {
                result += 1
            }
        }
        return result
    }
}
