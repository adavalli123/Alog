class Solution {
    func longestPalindrome(_ s: String) -> String {
        let s = Array(s)
        guard s.count > 1 else { return String(s) }
        
        var dp = Array(repeating: Array(repeating: false, count: s.count + 1), count: s.count + 1)
        var count = 0, l = 0, r = 0 
        
        for i in 0 ..< s.count {
            dp[i][i] = true
            count = 1
        }
        
        for i in stride(from: s.count-1, through: 0, by: -1) {
            for j in stride(from: i+1, to: s.count, by: 1) {
                // print((i, j))
                if s[i] == s[j], (dp[i+1][j-1] || j - i == 1)  {
                    // print((i, j))
                    dp[i][j] = true
                    
                    if count < j - i + 1 {
                        count = j - i + 1
                        l = i
                        r = j
                    }
                }
            }
        }
        
        return count == 1 ? String(s[1]) : String(s[l ... r])
    }
}