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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        guard let root1 = root1, let root2 = root2 else { return false }
        return leaf(root1) == leaf(root2)
    }
    
    func leaf(_ root: TreeNode?, _ arr: [Int] = []) -> [Int] {
        guard let root = root else { return [] }
        if root.left == nil, root.right == nil { return arr + [root.val] }
        return leaf(root.left) + leaf(root.right)
    }
}