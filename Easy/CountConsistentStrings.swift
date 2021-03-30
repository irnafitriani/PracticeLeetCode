//Count the Number of Consistent Strings

class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
       var result = 0
        var isContain = true
        for word in words {
            for (idx, s) in word.enumerated() {
                if !allowed.contains(s) {
                    isContain = false
                    break
                } else {
                    isContain = true
                    if idx == word.count - 1 {
                        result += 1
                    }
                }
            }
        }
        return result
        
    }
}
