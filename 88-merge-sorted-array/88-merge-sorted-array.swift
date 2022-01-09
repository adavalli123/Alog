class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums: [Int] = [], lStart = 0, rStart = 0
        
        while lStart < m, rStart < n {
            if nums1[lStart] < nums2[rStart] {
                nums += [nums1[lStart]]
                lStart += 1
            } else if nums1[lStart] > nums2[rStart] {
                nums += [nums2[rStart]]
                rStart += 1
            } else {
                nums += [nums1[lStart]]
                lStart += 1
            }
        }
        
        while lStart < m  {
            nums += [nums1[lStart]]
            lStart += 1
        } 
        
        while rStart < n {
            nums += [nums2[rStart]]
            rStart += 1
        } 
        
        nums1 = nums
    }
}