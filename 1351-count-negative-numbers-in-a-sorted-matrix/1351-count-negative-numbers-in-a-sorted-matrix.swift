class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var count = 0
        
        for m in grid {
            for n in m {
                if n < 0 { count += 1 }
            }
        }
        
        return count
    }
}