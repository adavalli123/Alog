import Foundation

class Solution {
    func findMin(_ nums: [Int]) -> Int {
        return BST(0, nums.count-1, nums)
    }
    
    @discardableResult
    func BST(_ start: Int, _ end: Int, _ nums: [Int]) -> Int {
        var mid = start + (end - start)/2
        guard start < end else { return nums[start] }
        
        if nums[mid] < nums[start] {
            return BST(start + 1, mid, nums)
        } 
        
        else if nums[mid] > nums[end] {
            return BST(mid + 1, end, nums)
        }
        
        return nums[start]
    }
}

// 4 1 2 3 5 6 7
// 4 > 3; 3 < 7 #wrong
// 