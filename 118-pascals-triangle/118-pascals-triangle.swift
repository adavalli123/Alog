class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var results: [[Int]] = []
        
        for i in 0 ..< numRows {
            var result: [Int] = []
            defer { results.append(result) }
            
            for j in 0 ... i {
                if j == 0 || j == i { result.append(1); continue }
                result.append(results[i-1][j] + results[i-1][j-1])
            }
        }
        
        return results
    }
}