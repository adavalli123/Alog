class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        guard obstacleGrid.count > 0, obstacleGrid[0].count > 0 else { return 0 }
        
        var dp = Array(repeating: Array(repeating: 0, count: obstacleGrid[0].count), count: obstacleGrid.count)
        
        if obstacleGrid[0][0] == 0 { dp[0][0] = 1 }
        for row in obstacleGrid.indices where row > 0 {
            if obstacleGrid[row][0] == 1 {
               dp[row][0] = 0 
            } else {
                dp[row][0] = dp[row-1][0]
            }
            
        }
        
        for col in obstacleGrid[0].indices where col > 0 {
            if obstacleGrid[0][col] == 1 {
               dp[0][col] = 0 
            } else {
                dp[0][col] = dp[0][col-1]
            }
            
        }
        
        for i in stride(from: 1, to: obstacleGrid.count, by: 1) {
            for j in stride(from: 1, to: obstacleGrid[0].count, by: 1) {
                // print((i, j))
                if obstacleGrid[i][j] == 1 { dp[i][j] = 0 }
                else { 
                    dp[i][j] = dp[i-1][j] + dp[i][j-1]
                }
            }
        }
        
        // print(dp)
        return dp[obstacleGrid.indices.last!][obstacleGrid[0].indices.last!]
    }
}