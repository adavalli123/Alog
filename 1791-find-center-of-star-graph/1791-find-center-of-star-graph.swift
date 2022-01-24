class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        var common = 0, prev: [Int] = []
        
        for e in edges {
            defer { prev = e }
            for i in e where prev.contains(i) {
                common = i
            }
        }
        
        return common
    }
}