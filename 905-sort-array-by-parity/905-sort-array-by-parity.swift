class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var left = 0, even = 0, nums = nums
        
        while left < nums.count {
            if nums[left] % 2 == 0 {
                (nums[even], nums[left]) = (nums[left], nums[even])
                even += 1
            }
            
            left += 1
        }
        
        return nums
    }
}