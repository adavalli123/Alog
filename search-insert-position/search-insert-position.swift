class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else { return -1 }
        var left = 0, right = nums.count - 1
        
        while left <= right {
            let mid = left + (right - left)/2
            
            if target == nums[mid] { return mid } 
            else if target < nums[mid] { right = mid - 1 } 
            else { left = mid + 1 }
        }
        
        return left
    }
}