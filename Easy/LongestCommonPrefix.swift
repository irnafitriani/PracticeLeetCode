class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let firstString = strs.first else {
            return ""
        }
        var result = ""
        for (i, char) in firstString.enumerated() { 
            for str in strs.dropFirst() {
                if i == str.count {
                    return result
                }
                
                let currentChar = str[str.index(str.startIndex, offsetBy: i)]
                if char != currentChar {
                    return result
                }
            }
            result.append(char)
            
        }
        return result
    }
}
