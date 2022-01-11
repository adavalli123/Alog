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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
//         func inorder(_ root: TreeNode?) -> [Int] {
//             guard let root = root else { return [] }
//             let left = inorder(root.left)
//             let right = inorder(root.right)
//             return left + [root.val] + right
//         }
        
//         return inorder(root).sorted()[k-1]
        
        guard let root = root else { return 0 }
        var stack = [root], k = k, cur: TreeNode? = root
        
        while !stack.isEmpty || cur != nil {
            while cur != nil { 
                stack.append(cur!)
                cur = cur?.left
            }
            
            guard let pop = stack.popLast() else { return 0 }
            // print(pop.val)
            if k == 1 { return pop.val }
            k -= 1
            cur = pop.right
        }
        
        return -1
    }
}