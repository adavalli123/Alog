class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        var dict: [Int: Int] = [:]
        
        for num in nums1 {
            if dict[num] != nil {
                let value = dict[num]!
                dict[num] = value + 1
            } else {
                dict[num] = 1
            }
        }
        
        for num in nums2 {
            if dict[num] != nil {
                let value = dict[num]!
                if value > 0 {
                  result.append(num) 
                    dict[num] = value-1
                }  
            }
        }
        
        return result
    }
}