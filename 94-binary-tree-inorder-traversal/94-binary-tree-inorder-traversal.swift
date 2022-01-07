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
    /* func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        let left = inorderTraversal(root.left)
        let right = inorderTraversal(root.right)
        return left + [root.val] + right 
    } */
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        var current: TreeNode? = root
        var stack: [TreeNode] = []
        
        while current != nil || !stack.isEmpty {
            if let node = current {
                stack.append(node)
                current = node.left
            } else {
                let node = stack.popLast()
                if let val = node?.val {
                    result.append(val)
                }
                current = node?.right
            }
        }
        return result
    }
}