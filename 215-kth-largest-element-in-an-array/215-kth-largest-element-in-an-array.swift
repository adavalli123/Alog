class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        let value = select(&nums, 0, nums.count - 1, nums.count - k)
        // print(nums)
        return value
    }
    
    func select(_ nums: inout [Int], _ l: Int, _ r: Int, _ k: Int) -> Int {
        guard l < r else { return nums[l] }
        let index = partition(&nums, l, r)
        guard k != index else { return nums[index] }
        if k < index { return select(&nums, l, index-1, k) }
        return select(&nums, index + 1, r, k)
    }
    
    /*# This function returns k'th smallest element
    # in arr[l..r] using QuickSort based method.
    # ASSUMPTION: ALL ELEMENTS IN ARR[] ARE DISTINCT */
    func pivot(_ nums: inout [Int], _ l: Int, _ r: Int) -> Int {
        let index = Int.random(in: l ... r)
        let value = nums[index]
        nums.swapAt(index, r)
        return value
    }
    
    /* Standard partition process of QuickSort().
    # It considers the last element as pivot and
    # moves all smaller element to left of it
    # and greater elements to right */
    func partition(_ nums: inout [Int], _ l: Int, _ r: Int) -> Int {
        var index = l, p = pivot(&nums, l, r)
        
        for j in l ..< r {
            if nums[j] <= p {
                nums.swapAt(index, j)
                index += 1
            }
        }
        
        nums.swapAt(index, r)
        return index
    }
}