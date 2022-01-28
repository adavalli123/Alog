class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var stack: [Int] = [], i = 0
        
        for val in pushed {
            stack.append(val)
            
            while stack.isEmpty == false, i < pushed.count, stack.last == popped[i] {
                _ = stack.popLast()
                i += 1
            }
        }
        
        return stack.isEmpty
    }
}