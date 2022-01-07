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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        return mirror(root, root)
    }
    
    func mirror(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        guard let root1 = root1, let root2 = root2 else { return root1 == nil && root2 == nil }
        let left =  mirror(root1.left, root2.right)
        let right = mirror(root1.right, root2.left)
        return root1.val == root2.val && left && right
    }
}