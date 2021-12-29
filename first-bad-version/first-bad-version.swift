/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0, right = n
        
        while left < right {
            let middle = left + (right - left)/2
            
            if isBadVersion(middle) {
                right = middle
                continue
            }
            
            left = middle + 1
        }
        
        return left
    }
}