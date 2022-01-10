/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
//     func postorder(_ root: Node?, _ arr: [Int] = []) -> [Int] {
//     	   guard let root = root else { return arr }
//         if root.children.isEmpty { return arr + [root.val] }
//         var output: [Int] = []
        
//         root.children.forEach { 
//             output += postorder($0, arr)
//         }
        
//         return arr + output + [root.val]
//     }
    
    func postorder(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        var stack = [root], results: [Int] = []
        
        while !stack.isEmpty {
            guard let pop = stack.popLast() else { return [] }
            pop.children.forEach { stack.append($0) }
            results.append(pop.val)
        }
        
        return results.reversed()
    }
}