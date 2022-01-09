class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var k = m + n - 1
        var m = m - 1
        var n = n - 1
        
        while m >= 0, n >= 0 {
            if nums1[m] < nums2[n] { nums1[k] = nums2[n]; k -= 1; n -= 1 }
            else if nums1[m] > nums2[n] { nums1[k] = nums1[m]; k -= 1; m -= 1 }
            else { nums1[k] = nums2[n]; k -= 1; n -= 1 }
        } 
        
        // while m >= 0 { nums1[k] = nums1[m]; k -= 1; m -= 1 }
        while n >= 0 { nums1[k] = nums2[n]; k -= 1; n -= 1 }
    }
}