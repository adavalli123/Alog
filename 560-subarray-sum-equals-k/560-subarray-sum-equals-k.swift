class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        
        for (i, num) in nums.enumerated() {
            var sum = 0
            
            for j in i ..< nums.count {
                sum += nums[j]
                if sum == k {
                    count += 1
                }
            }
        }
        
        return count
    }
}