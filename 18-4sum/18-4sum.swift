class Solution {
    
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        guard nums.count > 3 else { return [] }
        var nums = nums
        var result: [[Int]] = []
        
        for i in 0 ... nums.count - 4 where i == 0 || nums[i] != nums[i-1]  {
            for j in i + 1 ... nums.count - 3 where j == i + 1 || nums[j] != nums[j-1]  {
                
                var output = [nums[i], nums[j]]
                var targetRemaining = nums[i] + nums[j]
                
                let t = twoSum(
                                nums, 
                                output, 
                                target - targetRemaining,
                                j + 1,
                                nums.count - 1
                                )
                if t.o {
                        result += t.0
                }
            }
        }
        
        return Array(Set(result))
    }
    
    func twoSum(_ nums: [Int], _ r: [Int], _ k: Int, _ s: Int, _ e: Int) -> ([[Int]], o: Bool) {
        var output = false
        var result: [[Int]] = []
        var dict: [Int: Int] = [:]
        
        for i in s ... e {
            dict[k - nums[i]] = i
        }
        
        for i in s ... e {
            if let val = dict[nums[i]], val != i {
                result.append((r + [k - nums[i], nums[i]]).sorted())
                output = true
            }
        }

        return (result, output)
    }
}