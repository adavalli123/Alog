
class MinStack {
    var arr: [(Int, Int)] = []

    init() { }
    
    func push(_ val: Int) {
        if arr.isEmpty { 
            arr.append((val, val))
        } else {
            arr.append((val, min(val, arr[arr.count - 1].1)))
        }
    }
    
    func pop() {
        arr.popLast()
    }
    
    func top() -> Int {
        return arr.last?.0 ?? -1
    }
    
    func getMin() -> Int {
        return arr.last?.1 ?? -1
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