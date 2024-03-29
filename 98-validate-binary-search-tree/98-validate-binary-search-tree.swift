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
    // func isValidBST(_ root: TreeNode?, _ max: Int = Int.max, _ min: Int = Int.min) -> Bool {
    //     guard let root = root else { return true }
    //     if root.val <= min || root.val >= max { return false }
    //     return isValidBST(root.left, root.val, min) && isValidBST(root.right, max, root.val)
    // }
    
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        var stack: [TreeNode] = [], cur: TreeNode? = root, prev: TreeNode? 
        
        while !stack.isEmpty || cur != nil {
            while let curNode = cur {
                stack.append(curNode)
                cur = curNode.left
            }
            
            cur = stack.popLast() 
            if let prev = prev, let cur = cur, prev.val >= cur.val { return false }
            prev = cur
            cur = cur?.right 
        }
        
        return true
    }
}