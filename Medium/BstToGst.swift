//Binary Search Tree to Greater Sum Tree

class Solution {
    var s = 0
    func bstToGst(_ root: TreeNode?) -> TreeNode? {
        inorder(root: root)
        
        return root
        
    }
    
    func inorder(root: TreeNode?) {
        guard let r = root else {
            return 
        }
        
        inorder(root: r.right)
        r.val += s
        s = r.val
        
        inorder(root: r.left)
    }
    
}
