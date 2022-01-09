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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var queue = [root]
        var results: [[Int]] = []
        
        while !queue.isEmpty {
            var array: [Int] = []
            var count = queue.count - 1
            
            while count >= 0 {
                let pop = queue.remove(at: 0)
                count -= 1
                array.append(pop.val)
                
                if let left = pop.left {
                    queue.append(left)
                }  
            
                if let right = pop.right {
                    queue.append(right)
                }
            }
            
            results.append(array)
        }
        
        return results
    }
}