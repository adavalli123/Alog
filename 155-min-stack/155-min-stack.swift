
class MinStack {
    var arr: [Int] = []

    init() {
        
    }
    
    func push(_ val: Int) {
        arr.append(val)
    }
    
    func pop() {
        arr.popLast()
    }
    
    func top() -> Int {
        return arr.last ?? -1
    }
    
    func getMin() -> Int {
        var minimum = Int.max
        arr.forEach {
            minimum = min(minimum, $0)
        }
        
        return minimum
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */