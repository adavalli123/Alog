class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var dp: [[Int]] = []
        
        for i in 0 ... rowIndex {
            var arr: [Int] = [] 
            defer { dp.append(arr) }
            for j in 0 ... i {
                if j == 0 || j == i { arr.append(1); continue }
                let value = dp[i - 1][j - 1] + dp[i - 1][j]
                arr.append(value)
            } 
        } 
        
        return dp.last!
    }
}