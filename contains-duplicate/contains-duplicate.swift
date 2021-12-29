class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
//         var dict: [Int: Bool] = [:]
        
//         for num in nums { 
//             if let value = dict[num] { return true }
//             dict[num] = true
//         }
        
//         return false
    }
}