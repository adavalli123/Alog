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
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard let root = root else { return false }
        var stack = [root], dict: [Int: Int] = [:]
        while !stack.isEmpty {
            guard let pop = stack.popLast() else { return false } 
            if dict[pop.val] != nil { return true }
            dict[k - pop.val] = 1
            
            if let left = pop.left { stack.append(left) }
            if let right = pop.right { stack.append(right) }
        }
        
        print(dict)
        return false
    }
}