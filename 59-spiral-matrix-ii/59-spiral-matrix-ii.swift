class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var mat = Array(repeating: Array(repeating: 0, count: n), count: n)
        var counter = 1, row = 0, col = 0, rowE = n - 1, colE = n - 1
        
        while counter <= n * n {
            for i in stride(from: col, through: colE, by: 1) where counter <= n * n  {
                defer { counter += 1 }
                mat[row][i] = counter
            }
            
            row += 1
            
            for i in stride(from: row, through: rowE, by: 1) where counter <= n * n {
                defer { counter += 1 }
                mat[i][colE] = counter
            }
            
            colE -= 1
            
            for i in stride(from: colE, through: col, by: -1) where counter <= n * n  {
                defer { counter += 1 }
                mat[rowE][i] = counter
            }
            
            rowE -= 1
            
            for i in stride(from: rowE, through: row, by: -1) where counter <= n * n {
                defer { counter += 1 }
                mat[i][col] = counter
            }
            
            col += 1
        }
        
        return mat
    }
}