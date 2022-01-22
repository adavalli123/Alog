class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        var count = 0
        var intervals = intervals.sorted { $0[1] < $1[1] }
        var prev = Int.min
        
        intervals.forEach { 
            if $0[0] < prev {
                count += 1
            } else {
                prev = $0[1]
            }
        }
        
        return count
    }
}