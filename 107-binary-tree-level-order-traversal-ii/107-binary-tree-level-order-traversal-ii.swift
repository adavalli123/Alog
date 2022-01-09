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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var results: [[Int]] = []
        var queue = [root]
        
        while !queue.isEmpty {
            var temp: [Int] = []
            var queueCount = queue.count - 1
            defer { results.append(temp) }
            
            while queueCount >= 0 {
                let pop = queue.remove(at: 0)
                defer { temp.append(pop.val); queueCount -= 1 }
                
                if let left = pop.left { queue.append(left) }
                if let right = pop.right { queue.append(right) }
            }
        }
        
        return results.reversed()
    }
}