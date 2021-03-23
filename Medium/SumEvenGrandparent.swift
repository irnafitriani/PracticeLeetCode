//Sum of Nodes with Even-Valued Grandparent


/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func sumEvenGrandparent(_ root: TreeNode?) -> Int {
        var result = 0
        var grandParents = [root]
        
        while !grandParents.isEmpty{
            let grandPVal = grandParents.removeFirst()
            result += checkGrandParents(node: grandPVal)
            
            if let left = grandPVal?.left {
              grandParents.append(grandPVal?.left)  
            }
            
            if let right = grandPVal?.right {
                grandParents.append(grandPVal?.right)
            }
            
        }
        
        return result
    }
    
    func checkGrandParents(node: TreeNode?) -> Int {
        if let nodeVal = node?.val, nodeVal % 2 == 0 {
            return sumGrandChildren(left: node?.left, right: node?.right)
        }
        
        return 0
    }

    func sumGrandChildren(left: TreeNode?, right: TreeNode?) -> Int {
        var result = 0
        
        result += left?.left?.val ?? 0
        result += left?.right?.val ?? 0
        result += right?.left?.val ?? 00
        result += right?.right?.val ?? 0
        
        return result
        
    }
}
