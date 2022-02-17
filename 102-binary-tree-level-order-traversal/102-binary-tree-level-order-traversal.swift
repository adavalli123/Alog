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
        var q = [root], result: [[Int]] = []
        
        while q.isEmpty == false {
            var output: [Int] = []
            defer { result += [output] }
            
            for i in 0 ..< q.count {
                let pop = q.removeFirst()
                output += [pop.val]
                
                if let left = pop.left {
                    q.append(left)
                }
                
                if let right = pop.right {
                    q.append(right)
                }
            }
        }
        
        return result
    }
}