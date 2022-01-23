class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        matrix = matrix.reversed()
        
        for (i , n) in matrix.enumerated() {
            for j in i + 1 ..< n.count {
                (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j]) 
            }
        }
    }
}