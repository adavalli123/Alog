class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var temp = nums
        var left = 0, right = nums.count - 1, index = nums.count - 1
        
        while left <= right {
            let leftV = nums[left] * nums[left]
            let rightV = nums[right] * nums[right]

            if leftV < rightV {
                temp[index] = rightV
                right -= 1
            } else {
                temp[index] = leftV
                left += 1
            }
            
            index -= 1
        }
        
        return temp
    }
}