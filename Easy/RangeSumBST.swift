//Range Sum of BST

class Solution {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        var sum = 0
        var node = [root]
        
         while !node.isEmpty{
             let nodeVal = node.removeFirst()
             if nodeVal?.val ?? 0 >= low && nodeVal?.val ?? 0 <= high {
                 sum += nodeVal?.val ?? 0
             }
             
             if let left = nodeVal?.left {
              node.append(nodeVal?.left)  
             }
            
            if let right = nodeVal?.right {
                node.append(nodeVal?.right)
            }
            
         }
        return sum   
    }
}
