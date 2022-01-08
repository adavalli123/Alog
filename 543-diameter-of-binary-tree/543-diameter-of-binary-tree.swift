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
    var height = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        let left = height(root.left)
        let right = height(root.right)
        return max(left + right, max(diameterOfBinaryTree(root.left) , diameterOfBinaryTree(root.right)))
    }
    
    func height(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        return 1 + max(height(root.left), height(root.right))
    }
}