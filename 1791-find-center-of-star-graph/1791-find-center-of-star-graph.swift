class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        var prev: [Int] = []
        
        for e in edges {
            defer { prev = e }
            for i in e where prev.contains(i) {
                return i
            }
        }
        
        return 0
    }
}