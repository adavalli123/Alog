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
    func preorder(_ root: Node?) -> [Int] {
    	guard let root = root else { return [] }
        var stack = [root], results: [Int] = []
        
        while !stack.isEmpty {
            guard let pop = stack.popLast() else { return [] }
            results.append(pop.val)
            
            for child in pop.children.reversed() { 
                stack.append(child)
            }
        }
        
        print(results)
        return results
    }
}