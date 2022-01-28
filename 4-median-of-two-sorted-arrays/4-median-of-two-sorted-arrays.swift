class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var l1 = 0, l2 = 0, arr: [Int] = []
        
        while l1 < nums1.count, l2 < nums2.count {
            if nums1[l1] == nums2[l2] {
                arr.append(nums1[l1])
                l1 += 1
            } else if nums1[l1] < nums2[l2] {
                arr.append(nums1[l1])
                l1 += 1
            } else {
                arr.append(nums2[l2])
                l2 += 1
            }
        }
        
        while l1 < nums1.count {
            arr.append(nums1[l1])
            l1 += 1
        }
        
        while l2 < nums2.count {
            arr.append(nums2[l2])
            l2 += 1
        }

        if arr.count % 2 != 0 {
            return Double(arr[arr.count/2])
        }

        let midIndex = arr.count / 2
        return Double(arr[midIndex - 1] + arr[midIndex]) / 2.0
    }
}