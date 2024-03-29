class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var dp = Array(repeating: 0, count: n + 1)
        dp[1] = 1
        dp[2] = 2
        
        for i in stride(from: 3, through: n, by: 1) {
            dp[i] = dp[i-1] + dp[i-2]
            print((i, dp))
        }
        
        return dp[n]
    }
}