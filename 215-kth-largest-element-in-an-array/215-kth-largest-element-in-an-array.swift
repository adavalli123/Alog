class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        return nums.sorted()[nums.count - k]
    }
}