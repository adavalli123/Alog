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
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let root = root else { return [] }
        var results: [Double] = []
        var queue = [root]
        
        while !queue.isEmpty {
            var avg: Double = 0
            var count: Double = 0
            var queueCount = queue.count - 1
            defer { results.append(avg/count) }
            
            while queueCount >= 0 {
                let pop = queue.remove(at: 0)
                defer { count += 1; avg += Double(pop.val); queueCount -= 1 }
                
                if let left = pop.left { queue.append(left) }
                if let right = pop.right { queue.append(right) }
            }
        }
        
        return results
    }
}