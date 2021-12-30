class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        nums.enumerated().forEach { nums[ (k + $0)  % nums.count] = $1 }
    }
}