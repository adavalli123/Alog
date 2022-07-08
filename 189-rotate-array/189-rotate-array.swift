class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 1 else { return }
        // output format    k
        // 7 6 5 4 3 2 1    1
        // 5 6 7 4 3 2 1    2
        // 5 6 7 1 2 3 4    3
        
        // reverse array    index
        // 1 2 3 4 5 6 7    N/A
        // 7 2 3 4 5 6 1    0
        // 7 6 3 4 5 2 1    1
        // 7 6 5 4 3 2 1    2
        // count - 7/2 > 3
        
        // even array   index
        // 1 2 3 4 5 6  0
        // 6 2 3 4 5 1  1
        // 6 5 3 4 2 1  2
        // 6 5 4 3 2 1  3
        // count - 6/2 == 3
        
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