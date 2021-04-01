/*
  1. create temp array to store node, and dictionary that consist of index and the values of node
  2. while nodes != empty, loops the node , to know whether the node has left and right branch
  3. add left and right branch into temp array that we created
  4. after looping, and we get the temp array, replace the node values with the temp array values
  5. add the values of the node to the next index
  6. after we got the dictionaries, get the latest combination of dictionaries, to get the last array on branch
  7. sum every number on the array
*/


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
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        var lastNode = 0
        var nodes = [root]
        var index = 0
        var comb = [index:[root?.val ?? 0]]
        var values = [Int]()
        var tempNodes: [TreeNode?] = []
        while !nodes.isEmpty {
            tempNodes = []
            values = [Int]()
            for nodeVal in nodes {
                if let left = nodeVal?.left {
                    values.append(left.val)
                    tempNodes.append(left)
                }
            
                if let right = nodeVal?.right {
                    values.append(right.val)
                    tempNodes.append(right)
                }
            }
            nodes = tempNodes
            index += 1
            comb[index] = values
            
        }
        
        guard let array = comb[index - 1] else {
            return 0
        }
        
        for num in array {
            lastNode += num
        }
        
        return lastNode
    }
}

