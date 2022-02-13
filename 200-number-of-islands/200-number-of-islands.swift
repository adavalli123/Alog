class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid, count = 0
        
        for i in 0 ..< grid.count {
            for j in 0 ..< grid[i].count where grid[i][j] == "1" {
                dfs(&grid, i, j)
                count += 1
            }
        }
        
        return count
    }
    
    func dfs(_ grid: inout [[Character]], _ start: Int, _ i: Int) {
        guard start >= 0, start < grid.count, i >= 0, i < grid[start].count, grid[start][i] != "0" else {
            return 
        }
        
        
        grid[start][i] = "0"
        
        dfs(&grid, start+1, i) 
        dfs(&grid, start-1, i) 
        dfs(&grid, start, i+1) 
        dfs(&grid, start, i-1)
    }
}