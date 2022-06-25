class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var leftSum = 0
        var rightSum = 0
        
        for i in 0 ..< nums.count {
            rightSum += nums[i]
        }
        
        for i in 0 ..< nums.count {
            rightSum -= nums[i]
            // print("1 st for loop : \((leftSum, rightSum))")
            if leftSum == rightSum {
                return i
            }
            
            leftSum += nums[i]
        }
        
        // if leftSum == rightSum {
        //     return nums.count - 1
        // }
        
        // print((leftSum, rightSum))
        return -1
    }
}