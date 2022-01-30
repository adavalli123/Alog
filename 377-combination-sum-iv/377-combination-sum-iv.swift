class Solution {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        var dp = Array<Double>(repeating: 0, count: target+1)
        dp[0] = 1
        
        for i in dp.indices where i > 0 {
            for j in nums.indices where  i >= nums[j] {
                dp[i] += dp[i - nums[j]]
            }
        }
        
        return Int(dp[target])
    }
}