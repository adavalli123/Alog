class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var diagonalSum = 0
        
        for (i, m) in mat.enumerated() {
            for (j, n) in m.enumerated() {
                if i == j || m.count - 1 - i == j {
                    // print("i == \(i), j == \(j)")
                    diagonalSum += n
                }
            }
        }
        
        return diagonalSum
    }
}