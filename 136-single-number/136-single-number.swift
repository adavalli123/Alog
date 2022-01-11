class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(into: [:]){ $0[$1, default: 0] += 1 }.filter { $0.value == 1 }.first?.key ?? -1
    }
}