class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        // guard nums.count > 1 else { return }
        let k = k % nums.count
        reverse(0, nums.count-1, &nums)
        reverse(k, nums.count-1, &nums)
        reverse(0, k-1, &nums)
        
    }
    
    func reverse(_ startIndex: Int, _ endIndex: Int, _ nums: inout [Int]) {
        var startIndex = startIndex, endIndex = endIndex
        while startIndex < endIndex {
            nums.swapAt(startIndex, endIndex)
            startIndex += 1
            endIndex -= 1
        }
    }
}