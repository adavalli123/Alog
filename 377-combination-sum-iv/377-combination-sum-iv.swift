class Solution {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        var dp = Array<Double>(repeating: 0, count: target+1)
        dp[0] = 1
        
        for i in dp.indices {
            for j in nums.indices {
                if i >= nums[j] {
                    dp[i] += dp[i - nums[j]]
                }
            }
        }
        
        return Int(dp[target])
    }
}