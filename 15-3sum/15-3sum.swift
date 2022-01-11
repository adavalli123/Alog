class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else { return [] }
        var nums = nums.sorted()
        var output: [[Int]] = []
        
        nums.enumerated().forEach {
            var l = $0 + 1, r = nums.count - 1
            
            while l < r {
                if nums[l] + nums[r] + $1 == 0 {
                    output.append([nums[l], nums[$0], nums[r]])
                    l += 1
                    r -= 1
                }
                
                else if nums[l] + nums[r] + $1 < 0 {
                    l += 1
                }
                
                else {
                    r -= 1
                }
            } 
        }
        
        return Array(Set(output))
    }
}