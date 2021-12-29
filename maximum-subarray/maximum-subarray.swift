class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var maxSubArrayValue = Int.min
        var index = 0
        var maxValue = 0
        
        while index < nums.count {
            maxValue += nums[index]
            maxValue = max(nums[index], maxValue)
            maxSubArrayValue = max(maxSubArrayValue, maxValue)
            
            index += 1
        }
        
        return maxSubArrayValue
    }
}