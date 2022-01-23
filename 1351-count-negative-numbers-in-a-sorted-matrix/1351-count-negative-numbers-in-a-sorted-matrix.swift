class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var grid = grid
        return grid.flatMap { $0 }.filter { $0 < 0 } .count
    }
}