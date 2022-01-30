class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: text2.count + 1), count: text1.count + 1)
        for (index, ch) in text1.enumerated() {
            for (i, ch2) in text2.enumerated() {
                if ch == ch2 {
                    dp[index+1][i+1] = dp[index][i] + 1
                    continue
                }
                
                dp[index+1][i+1] = max(dp[index][i+1], dp[index+1][i])
            }
        }
        return dp[text1.count][text2.count]
    }
}