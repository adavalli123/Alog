class Solution {
    func countSubstrings(_ s: String) -> Int {
        var dp = Array(repeating: Array(repeating: false, count: s.count + 1), count: s.count + 1)
        var s = Array(s), count = 0, l = 0, r = 0
        
        for i in s.indices {
            dp[i][i] = true
            count += 1
        }
        
        for i in stride(from: s.count, through: 0, by: -1) {
            for j in stride(from: i+1, to: s.count, by: 1) where s[i] == s[j] && (dp[i+1][j-1] || j - i == 1) {
                dp[i][j] = true
                count += 1
            }
        }
        
        return count
    }
}