//Goal Parser Interpretation

class Solution {
    func interpret(_ command: String) -> String {
        var newString = command
        
        newString = newString.replacingOccurrences(of: "()", with: "o")
        newString = newString.replacingOccurrences(of: "(al)", with: "al")
        
        return newString
        
    }
}
