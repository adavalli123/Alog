class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var board = board
        
        var row: [Int: [Character]] = [:]
        var col: [Int: [Character]] = [:]
        var subMatrix: [Int: [Character]] = [:]
        
        for i in 0 ..< board.count {
            for j in 0 ..< board[i].count where board[i][j] != "." {
                let character = board[i][j]
                
                if row[i]?.contains(character) == true {
                    return false
                }
                
                row[i, default: []] += [character]
                
                if col[j]?.contains(character) == true {
                    return false
                }
                
                col[j, default: []] += [character]
                
                let subMatrixIndex = (i/3)*3 + (j/3)
                if let values = subMatrix[subMatrixIndex], values.contains(character) {
                    return false
                }
                
                subMatrix[subMatrixIndex, default: []] += [character]
            }
        }
        
        // print((row, col, subMatrix))
        return true
    }
}