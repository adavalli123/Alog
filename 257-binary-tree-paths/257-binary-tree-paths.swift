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
//     func binaryTreePaths(_ root: TreeNode?, _ path: String = "") -> [String] {
//         guard let root = root else { return [] }
//         var path = path; if !path.isEmpty { path += "->"  }
        
//         if root.left == nil, root.right == nil { return [path + String(root.val)] }
        
//         let left = binaryTreePaths(root.left, path + String(root.val))
//         let right = binaryTreePaths(root.right, path + String(root.val))
//         return left + right
//     }
    
    func binaryTreePaths(_ root: TreeNode?, _ path: String = "") -> [String] {
        guard let root = root else { return [] }
        var stack = [(root: root, path: String(root.val))], arr: [String] = []
        
        repeat { 
            guard let pop = stack.popLast() else { return [] }
            if pop.root.left == nil, pop.root.right == nil {
                arr.append(pop.path)
            }
            
            if let left = pop.root.left { 
                stack.append((left, pop.path + "->" + String(left.val)))
            }
            
            if let right = pop.root.right { 
                stack.append((right, pop.path + "->" + String(right.val)))
            }
        } while !stack.isEmpty
        
        return arr
    }
}