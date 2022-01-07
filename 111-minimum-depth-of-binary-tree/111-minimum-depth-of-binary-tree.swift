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
    func minDepth(_ root: TreeNode?) -> Int {
        return height(root)
    }
    
    func height(_ root: TreeNode?, _ level: Int = 0) -> Int {
        guard let root = root else { return level }
        if root.left == nil {
            return height(root.right, level + 1)
        }
        
        if root.right == nil {
            return height(root.left, level + 1)
        }

        return min(height(root.left, level + 1), height(root.right, level + 1))
    }
}