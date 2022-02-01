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
    func maxDepth(_ root: Node?) -> Int {
        guard let root = root else { return 0 }
        var dc = 0
        
        for child in root.children {
            dc = max(dc, maxDepth(child))
        }
        
        return dc + 1
    }
}