class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        // let len = nums.count
        // nums = nums.filter { $0 != 0 } 
        // nums = nums + Array(repeating: 0, count: len - nums.count)
        var left = 0, zero = 0
        while left < nums.count {
            if nums[left] != 0 {
                (nums[zero], nums[left]) = (nums[left], nums[zero]) 
                zero += 1
            }
            
            left += 1
        }
    }
}