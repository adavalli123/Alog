class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        let value = heap(&nums, 0, nums.count - 1)
        // print(nums)
        return nums[k-1]
    }
    
    func heap(_ A: inout [Int], _ index: Int, _ size: Int) {
        buildHeap(&A)
        
        for i in stride(from: A.count - 1, through: 0, by: -1) {
            A.swapAt(0, i)
            downHeapify(&A, 0, i)
        }
    }
    
    func buildHeap(_ A: inout [Int]) {
        for i in stride(from: A.count/2 - 1, through: 0, by: -1) {
            downHeapify(&A, i, A.count)
        }
    }
    
    func downHeapify(_ A: inout [Int], _ index: Int, _ size: Int) {
        var largest = index
        var left = (2 * index) + 1
        var right = (2 * index) + 2
        
        if left < size, A[left] < A[largest] {
            largest = left
        }
        
        if right < size, A[right] < A[largest] {
            largest = right
        }
        
        if largest != index {
            (A[index], A[largest]) = (A[largest], A[index])
            downHeapify(&A, largest, size)
        }
    }
}