class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 1 else { return s.count }
        var seen: [Character: Int] = [:]
        var maxCount = 0, start = 0
        
        for (index, ch) in Array(s).enumerated() {
            if seen[ch] != nil {
                start = max(start, seen[ch]! + 1)
            }
            
            seen[ch] = index
            maxCount = max(maxCount, index - start + 1)
        }
        
        return maxCount
    }
}