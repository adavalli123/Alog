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
    func sumOfLeftLeaves(_ root: TreeNode?, _ isLeft: Bool = false) -> Int {
        guard let root = root else { return 0 }
        if isLeft, root.left == nil, root.right == nil { return root.val }
        
        let left = sumOfLeftLeaves(root.left, true)
        let right = sumOfLeftLeaves(root.right, false)
        return left + right
    }
}