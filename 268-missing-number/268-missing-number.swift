class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum = (0, 0)
        
        for (i, n) in nums.enumerated() {
            sum = (sum.0 + i, sum.1 + n)
        }
        
        sum.0 += nums.count
        return sum.0 - sum.1
    }
}