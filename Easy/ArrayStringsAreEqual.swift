// Check If Two String Arrays are Equivalent

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        let string1 = word1.joined(separator:"")
        let string2 = word2.joined(separator:"")
        
        return string1 == string2
    }
}
