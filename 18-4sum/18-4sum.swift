class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        guard nums.count > 3 else { return [] }
        var dict: [Int: Int] = [:]
        var nums = nums.sorted()
        var result: [[Int]] = []
        
        for i in 0 ... nums.count - 4 {
            for j in i + 1 ... nums.count - 3 {
                
                var output = [nums[i], nums[j]]
                var targetRemaining = nums[i] + nums[j]
                
                let t = twoSum(Array(nums[j+1 ... nums.count - 1]), 
                                 output, 
                                 target - targetRemaining
                                )
                if t.o {
                    for v in t.0 {
                        result.append((output + v).sorted())
                    }
                }
            }
        }
        
        return Array(Set(result))
    }
    
    func twoSum(_ nums: [Int], _ result: [Int], _ k: Int) -> ([[Int]], o: Bool) {
        var output = false
        var result: [[Int]] = []
        var dict = nums.enumerated().reduce(into: [:]) { $0[k - $1.1, default: 0] = $1.0 }
        nums.enumerated().forEach { 
            if let val = dict[$0.1], val != $0.0 {
                result.append([k - $0.1, $0.1])
                output = true
            }
        }
        
        return (result, output)
    }
}