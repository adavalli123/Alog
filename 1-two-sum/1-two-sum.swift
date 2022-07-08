class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for (i, num) in nums.enumerated() {
            if let value = dict[num] {
                return [value, i]
            }
            
            dict[target - num, default: 0] = i
        }
        
        return []
    }
}