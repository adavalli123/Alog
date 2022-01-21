class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0, sum = 0, map: [Int: Int] = [0: 1]
        
        for num in nums {
            sum += num
            if let val = map[sum - k] {
                count += val
            }
            
            map[sum] = (map[sum] ?? 0) + 1
        }
        
        return count
    }
}

// 1 3 4 6 7
// 1 2 3