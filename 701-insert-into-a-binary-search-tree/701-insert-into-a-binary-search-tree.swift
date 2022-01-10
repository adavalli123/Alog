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
    // func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    //     guard let root = root else { return TreeNode(val) }
    //     if root.val < val { root.right = insertIntoBST(root.right, val) }
    //     if root.val > val { root.left = insertIntoBST(root.left, val) }
    //     return root
    // }
    
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return TreeNode(val) }
        var cur: TreeNode? = root, parent: TreeNode?
        
        while cur != nil {
            parent = cur
            
            if cur!.val > val { cur = cur?.left }
            else { cur = cur?.right }
        }
        
        if let parent = parent, parent.val > val { parent.left = TreeNode(val) } 
        else { parent?.right = TreeNode(val) }
        
        return root
    }
}