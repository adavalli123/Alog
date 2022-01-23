class Solution {
    func checkValid(_ matrix: [[Int]]) -> Bool {
        
        for (r, m) in matrix.enumerated() {
            let resetDict = (1 ... matrix.count).reduce(into: [:]) { $0[$1, default: false] }
            var row = resetDict
            var col = resetDict
            
            for (c, n) in m.enumerated() {
                if row[matrix[r][c], default: false] || 
                    col[matrix[c][r], default: false] 
                    { return false }
                
                row[matrix[r][c]] = true
                col[matrix[c][r]] = true
            }
        } 

        
        return true
    }
}