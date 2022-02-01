class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var matrix = matrix
        for i in matrix.indices {
            for j in matrix[i].indices {
                if dfs(&matrix, i, j, target) {
                    return true
                }
            }
        }
        
        return false
    }
    
    func dfs(_ matrix: inout [[Int]], _ i: Int, _ j: Int, _ target: Int) -> Bool {
        guard i >= 0, j >= 0, i < matrix.count, j < matrix[0].count, matrix[i][j] > -500 else { return false }
        
        if matrix[i][j] == target {
            return true
        }
        
        matrix[i][j] = -1000
        let d = dfs(&matrix, i + 1, j, target)
        let u = dfs(&matrix, i - 1, j, target)
        let l = dfs(&matrix, i, j + 1, target)
        let r = dfs(&matrix, i, j - 1, target)
        return d || u || l || r
    }
}