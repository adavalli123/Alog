class Solution {
    
    
//     [4,18,-3,-6,-1,12,2,-7,19,18,-5,6,-3,15,15,12,6,-7,11,14,-8,-10,17,5,8,9,7,-3,10,-6,-4,-3,3,3,-6,16,-8,13,15,19,-5,7,-1,-10,17,-3,5,-3,1,-3,11,2,5,-7,12,18,11,7,16,-6,5,15,-7,2,-4,10,-10,-9,12,-8] 
//     failing
    
//     func maxRotateFunction(_ nums: [Int]) -> Int {
//         var maximum = Int.min, nums = nums
        
//         for i in 0 ..< nums.count {
//             var no = 0
//             nums.enumerated().forEach { no += $0 * $1 }
//             print(no)
//             maximum = max(maximum, no)
//             reverse(&nums, 0, i - 1)
//             reverse(&nums, i, nums.count - 1)
//             reverse(&nums, 0, nums.count - 1)
//             print(maximum)
//         }
        
//         return maximum
//     }
    
//     func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
//         var start = start, end = end
//         while start <= end {
//             (nums[start], nums[end]) = (nums[end], nums[start])
//             start += 1
//             end -= 1
//         }
//     }
    
    
    func maxRotateFunction(_ nums: [Int]) -> Int {
        var sum = nums.reduce(0) { $0 + $1 } 
        var maximum = nums.enumerated().reduce(0) { $0 + $1.0 * $1.1 }
        var funcMax = maximum
        
        nums.reversed().forEach { 
            maximum = maximum + sum - ($0 * nums.count)
            funcMax = max(funcMax, maximum)
        }
        
        return funcMax
    }
    
}