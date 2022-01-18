class Solution {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        // start with flat array
        var m = matrix.flatMap { $0 }
        quick(&m, 0, m.count - 1)
        // print(m)
        return m[k-1]
    }
    
    func partition(_ A: inout [Int], _ l: Int, _ h: Int, _ p: Int) -> (Int, Int) {
        var low = l, equal = l, high = h, pivot = A[p]
        
        while equal <= high {
            if A[equal] < pivot {
                (A[low], A[equal]) = (A[equal], A[low])
                equal += 1
                low += 1
            } else if A[equal] == pivot {
                equal += 1
            } else {
                (A[equal], A[high]) = (A[high], A[equal])
                high -= 1
            }
        }
        
        return (low, high)
    } 
    
    @discardableResult
    func quick(_ A: inout [Int], _ l: Int, _ h: Int) {
        guard l < h else { return }
        let p = Int.random(in: l ... h)
        let (lo, hi) = partition(&A, l, h, p)
        quick(&A, l, lo-1)
        quick(&A, hi+1, h)
    }
}