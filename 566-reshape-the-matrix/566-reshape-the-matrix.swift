class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        var results: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)
        var col = 0, row = 0
        
        guard r * c == mat.count * mat[0].count else { return mat }
        
        for i in 0 ..< mat.count {
            for j in 0 ..< mat[i].count {
                if col >= c { 
                    row += 1
                    col = 0
                }
                
                results[row][col] = mat[i][j]
                col += 1
            }
        }
        
        return results
    }
}