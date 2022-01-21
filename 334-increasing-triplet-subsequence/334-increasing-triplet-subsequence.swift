class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var small = Int.max, big = Int.max
        
        for num in nums {
            if small >= num { small = num
            } else if num <= big { big = num
            } else { return true }
        }
        
        return false
        
    }
}