class Solution {
    func longestPalindrome(_ s: String) -> Int {
        let dict = s.reduce(into: [:]) { $0[$1, default: 0] += 1 }
        var ans = 0
        
        for v in dict {
            ans += (v.value / 2) * 2
            
            if ans % 2 == 0, v.value % 2 == 1 {
                ans += 1
            } 
        }
        
        return ans
    }
}