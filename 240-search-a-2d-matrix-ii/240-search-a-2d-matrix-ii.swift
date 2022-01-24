class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var index = 0
        
        while index < matrix.count {
            var left = 0, right = matrix[index].count - 1
            if matrix[index][left] <= target, target <= matrix[index][right] {
                for num in matrix[index] where num == target { return true }
                index += 1
            } else {
                index += 1
            }
        }
        
        return false
    }
}