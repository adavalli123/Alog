class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        let dict = nums.reduce(into: [:]) { $0[$1, default: 0] += 1 }
        var nums = dict.map { ($0, $1) }
        
        buildHeap(&nums)
        
        for i in stride(from: nums.count-1, through: 0, by: -1) {
            (nums[0], nums[i]) = (nums[i], nums[0])
            downHeapify(&nums, 0, i)
        }
        
        let topKFreq = nums.map { $0.0 }
        return Array(topKFreq[0 ..< k])
    }
    
    func buildHeap(_ A: inout [(Int, Int)]) {
        for i in stride(from: A.count/2 - 1, through: 0, by: -1) {
            downHeapify(&A, i, A.count)
        }
    }
    
    func downHeapify(_ A: inout [(Int, Int)], _ index: Int, _ size: Int) {
        var largest = index
        var left = (2 * index) + 1
        var right = (2 * index) + 2
        
        if left < size, A[left].1 < A[largest].1 {
            largest = left
        }
        
        if right < size, A[right].1 < A[largest].1 {
            largest = right
        }
        
        if largest != index {
            (A[index], A[largest]) = (A[largest], A[index])
            downHeapify(&A, largest, size)
        }
    }
}