class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var sortedIntervals = intervals.sorted { $0[0] < $1[0] }
        var results: [[Int]] = []
        var index = 0
        
        while index < sortedIntervals.count {
            defer { index += 1 }
            
            if results.isEmpty || results.last![1] < sortedIntervals[index][0] {
                results.append(sortedIntervals[index])
            }
            
            else {
                results[results.count-1][1] = max(results.last![1], sortedIntervals[index][1])
            }
        }
        
        return results
    }
}