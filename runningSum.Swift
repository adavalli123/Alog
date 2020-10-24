    /* 
    Runtime: 16 ms, faster than 91.72% of Swift online submissions for Running Sum of 1d Array.
    Memory Usage: 14.5 MB, less than 57.47% of Swift online submissions for Running Sum of 1d Array.
    */
    
    func runningSum(_ nums: [Int]) -> [Int] {  
        var nums = nums
        var value = 0
        nums.enumerated().forEach({ value += $1; nums[$0] = value })
        
        return nums
    }
    
    // Time complexity - o(n), Space Complexity - o(n)
    
