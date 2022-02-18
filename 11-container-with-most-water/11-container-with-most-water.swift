class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxWater = 0
        var left = 0, right = height.count - 1
        
        while left <= right {
            maxWater = max(maxWater, min(height[left], height[right]) * (right - left))
            if height[left] < height[right] { left += 1 } 
            else { right -= 1 }
        }
        
        return maxWater
    }
}