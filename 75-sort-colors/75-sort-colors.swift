class Solution {
    func sortColors(_ nums: inout [Int]) {
        var red = 0, white = 0, blue = nums.count - 1
        
        while white <= blue {
            if nums[white] == 0 {
                (nums[red], nums[white]) = (nums[white], nums[red])
                red += 1
                white += 1
            } else if nums[white] == 1 {
                white += 1
            } else {
                (nums[white], nums[blue]) = (nums[blue], nums[white])
                blue -= 1
            }
        }
    }
}