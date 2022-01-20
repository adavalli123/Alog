class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        return [Int](nums.reduce(into: [:]) { $0[$1, default: 0] += 1 }.sorted { $0.1 > $1.1 }.map { $0.0 }[0 ..< k])
    } 
}