class Solution {
    func sortColors(_ nums: inout [Int]) {
        var red = 0, white = 0, blue = 0
        
        for num in nums {
            if num == 0 { red += 1 }
            else if num == 1 { white += 1 }
            else { blue += 1 }
        }
        
        nums = Array(repeating: 0, count: red) + Array(repeating: 1, count: white) + Array(repeating: 2, count: blue)
    }
}