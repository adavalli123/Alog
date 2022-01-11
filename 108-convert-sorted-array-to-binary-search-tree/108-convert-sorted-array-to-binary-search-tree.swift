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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        let mid = nums.count/2
        guard nums.count > 0 else { return nil }
        let root: TreeNode = TreeNode(nums[mid])
        root.left = sortedArrayToBST([Int](nums[0 ..< mid]))
        root.right = sortedArrayToBST([Int](nums[mid + 1 ..< nums.count]))
        return root
    }
}