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
    // func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    //     guard let root = root else { return false }
    //     if root.left == nil, root.right == nil { return targetSum == root.val }
    //     let left = hasPathSum(root.left, targetSum - root.val)
    //     let right = hasPathSum(root.right, targetSum - root.val)
    //     return left || right
    // }
    
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else { return false }
        var stack: [(root: TreeNode, val: Int)] = [(root, root.val)]
        
        while !stack.isEmpty {
            guard let (node, path) = stack.popLast() else { return false }
            if node.left == nil, node.right == nil, path == targetSum { return true }
            if let left = node.left { stack.append((left, path + left.val)) }
            if let right = node.right { stack.append((right, path + right.val)) }
        }
        
        return false
    }
}