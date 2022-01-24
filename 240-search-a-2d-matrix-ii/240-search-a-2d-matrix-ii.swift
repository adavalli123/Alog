class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for m in matrix {
            for i in m where i == target {
                return true
            }
        }
        
        return false
    }
}