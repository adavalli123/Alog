class Solution {
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        var stack: [(Int, [Int])] = [(0, [0])]
        var r: [[Int]] = []
        
        while !stack.isEmpty {
            guard let p = stack.popLast() else { return [] }
            if p.0 == graph.count - 1  {
                r.append(p.1)
            }
            
            for i in graph[p.0] {
                stack.append((i, p.1 + [i]))
            }
        }
        
        return r
    }
}