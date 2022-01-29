class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var numberOfIslands = 0, grid = grid
        
        for i in 0 ..< grid.count {
            for j in 0 ..< grid[i].count {
                if grid[i][j] == "1" {
                    dfs(&grid, i, j)
                    numberOfIslands += 1
                }
            }
        }
        
        return numberOfIslands
    }
    
    func dfs(_ grid: inout [[Character]], _ i: Int, _ j: Int) {
        if i < 0 || j < 0 || i >= grid.count || j >= grid[0].count || grid[i][j] != "1" {
            return
        }
        grid[i][j] = "#"
        dfs(&grid, i, j - 1)
        dfs(&grid, i - 1, j)
        dfs(&grid, i, j + 1)
        dfs(&grid, i + 1, j)
    }
}