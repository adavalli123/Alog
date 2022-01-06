class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var temp = nums, left = 0, start = 0, end = n, index = 0
        
        while left < nums.count {
            if end - index == n {
                temp[start] = nums[index]
                index += 1
            } else {
                temp[start] = nums[end]
                end += 1
            }
        
            start += 1
            left += 1
        }
        
        return temp
    }
}