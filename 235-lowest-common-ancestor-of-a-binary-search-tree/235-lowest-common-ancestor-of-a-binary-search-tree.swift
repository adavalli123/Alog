/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        switch (root, p, q) {
            case (let root, .some(let p), .some(let q)) where root.val < min(p.val, q.val): 
                return lowestCommonAncestor(root.right, p, q)
            case (let root, .some(let p), .some(let q)) where root.val > max(q.val, p.val): 
                return lowestCommonAncestor(root.left, p, q)
            default: return root
        }
        
        return nil
    }
}