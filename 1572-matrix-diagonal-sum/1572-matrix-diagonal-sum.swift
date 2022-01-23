class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var diagonalSum = 0
        
        for (i, m) in mat.enumerated() {
            for (j, n) in m.enumerated() where i == j || m.count - 1 - i == j {
                // if i == j || m.count - 1 - i == j {
                    diagonalSum += n
                // }
            }
        }
        
        return diagonalSum
    }
}