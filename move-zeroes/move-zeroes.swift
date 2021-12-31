class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let len = nums.count
        nums = nums.filter { $0 != 0 } 
        nums = nums + Array(repeating: 0, count: len - nums.count)
    }
}