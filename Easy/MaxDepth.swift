//Maximum Nesting Depth of the Parentheses

class Solution {
    func maxDepth(_ s: String) -> Int {
        var maxDepth = 0 
        var occur = 0
        
        for char in s {
            if char == "(" {
                occur += 1
            } else if char == ")" {
                if maxDepth < occur {
                    maxDepth = occur
                }
                occur -= 1
            }
        }
        return maxDepth
        
    }
}
