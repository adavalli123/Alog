class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for i in board.indices {
            let rows = board[i].filter { $0 != "." }
            let cols = board.map{ $0[i] }.filter { $0 != "." }
            let n = (a: 3 * (i / 3), b: 3 * (i % 3))
            let blks = board[n.a ..< n.a + 3].flatMap{$0[n.b ..< n.b + 3]}.filter{$0 != "."}
            if rows.count != Set(rows).count ||
                cols.count != Set(cols).count ||
                blks.count != Set(blks).count { return false }
        }
        return true
        
    }
}