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
    func maxDepth(_ root: TreeNode?) -> Int {
        return root == nil ? 0 : max(maxDepth(root?.left), maxDepth(root?.right)) + 1
    }
//     func maxDepth(_ root: TreeNode?) -> Int {
//         guard let root = root else { return 0 }
//         var stack: [(TreeNode, Int)] = [(root, 1)]
//         var maximum = 0
        
//         while !stack.isEmpty {
//             guard let pop = stack.popLast() else { return 0 }
//             maximum = max(pop.1, maximum)
            
//             if let left = pop.0.left {
//                 stack.append((left, pop.1 + 1))
//             }
            
//             if let right = pop.0.right {
//                 stack.append((right, pop.1 + 1))
//             }
//         }
        
//         return maximum
//     }
    
//     func maxDepth(_ root: TreeNode?) -> Int {
//         guard let root = root else { return 0 }
//         var q = [root]
        
//         var maxLevel = 0
        
//         while q.isEmpty == false {
//             maxLevel += 1
            
//             for i in 0 ..< q.count {
//                 let dequeue = q.removeFirst()
//                 if let left = dequeue.left {
//                     q.append(left)
//                 }
            
//                 if let right = dequeue.right {
//                     q.append(right)
//                 }
//             }
//         }
        
//         return maxLevel
//     }
}