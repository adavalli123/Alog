class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let matrix = matrix.flatMap { $0 }
        var left = 0, right = matrix.count - 1
        
        while left < right {
            let mid = left + (right - left)/2
            if matrix[mid] < target {
                left = mid + 1
            } else if matrix[mid] > target {
                right = mid
            } else if matrix[mid] == target {
                return true
            }
        }
        
        return matrix[left] == target
    }
}