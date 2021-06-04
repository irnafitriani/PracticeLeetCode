//Longest Uncommon Subsequence I

class Solution {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        if a == b {
            return -1
        }
        
        if a.count > b.count {
            return a.count
        } else {
            return b.count
        }
        
    }
}
