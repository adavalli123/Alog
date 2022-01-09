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
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let root = root else { return 0 }
        var path = 0, stack = [root]
        
        while !stack.isEmpty { 
            guard let pop = stack.popLast() else { return 0 }
            if (low ... high).contains(pop.val) { path = path + pop.val }
            if let left = pop.left { stack.append(left) }
            if let right = pop.right { stack.append(right) }
        }
        
        return path
    }
}