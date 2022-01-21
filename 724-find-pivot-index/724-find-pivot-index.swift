class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var sum = nums.reduce(0, +)
        var leftSum = 0
        
        for (index, num) in nums.enumerated() {
            if leftSum == sum - leftSum - num {
                return index
            }
            
            leftSum += num
        }
        
        return -1
    }
}