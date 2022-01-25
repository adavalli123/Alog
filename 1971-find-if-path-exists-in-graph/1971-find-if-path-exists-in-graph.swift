class Solution {
    func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
        var graph: [Int: [Int]] = [:]
        
        for e in edges {
            graph[e[0], default: []] += [e[1]]
            graph[e[1], default: []] += [e[0]]
        }
        
        var visited: Set<Int> = []
        var stack: [Int] = [source]
        
        while !stack.isEmpty {
            guard source != destination else { return true }
            guard let pop = stack.popLast() else { return false }
            if visited.contains(pop) { continue }
            
            if let adjacentNodes = graph[pop] {
                for node in adjacentNodes {
                    if node == destination {
                        return true
                    }
                    
                    stack.append(node)
                }
            }
            
            visited.insert(pop)
        }
        
        
        
        return false
    }
}