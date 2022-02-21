class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        
        outerloop: for (index, num) in nums.enumerated() {
            var sum = 0 
            
            innerloop: for i in stride(from: index, to: nums.count, by: 1) {
                sum += nums[i]
                
                if sum == k { 
                    count += 1
                    // continue outerloop 
                }
            }
        }
        
        // print(subArray)
        return count
    }
}