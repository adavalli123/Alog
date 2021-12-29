class Solution {
    // runtime - 72ms - 47.06 %
    // memory - 14.4mb, 56.10%
    // time complexity - O(n) square
    // space complexity - O(1)
    
//     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//         var left = 0, right = 1
        
//         while left < right {
//             while right < nums.count {
//                 if nums[left] + nums[right] == target {
//                     return [left, right]
//                 }  
                
//                 right += 1
//             }
            
//             left += 1
//             right = left + 1
//         }
        
//         return []
//     }
    
    
    // runtime - 48ms - 92.25%
    // mem usage - 14.3mb - 56.10%
    // time complexity - O(n)
    // space complexity - O(1)
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var output: [Int] = []
        
        nums.enumerated().forEach { 
            if let value = dict[$1] {
                 output = [value, $0]
            } else {
                dict[target - $1] = $0
            }
        }
        
        return output
    }
}