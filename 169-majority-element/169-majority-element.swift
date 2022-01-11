class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        return nums.reduce(into: [:]) { $0[$1, default: 0] += 1 }.filter { $0.value > nums.count/2 }.first?.key ?? -1
    }
}