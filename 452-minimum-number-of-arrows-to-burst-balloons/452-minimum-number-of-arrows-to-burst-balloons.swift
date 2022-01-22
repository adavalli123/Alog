class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        var prev = Int.min, count = 0, points = points.sorted{ $0[1] < $1[1] }
        
        points.forEach {
            if $0[0] > prev {
                prev = $0[1]
                count += 1
            }
        }
        
        return count
    }
}