
class MyQueue {
    var stack1 = MyStack()
    var stack2 = MyStack()

    init() { }
    
    func push(_ x: Int) {
        stack1.push(x)
    }
    
    func pop() -> Int {
        while !stack1.empty() {
            let pop = stack1.pop()
            stack2.push(pop)
        }
        
        let popedElement = stack2.pop() 
        
        while !stack2.empty() {
            let pop = stack2.pop()
            stack1.push(pop)
        }
        
        return popedElement
    }
    
    func peek() -> Int {
        while !stack1.empty() {
            let pop = stack1.pop() 
            stack2.push(pop)
        }
        
        let peek = stack2.peek() 
        while !stack2.empty() {
            let pop = stack2.pop() 
            stack1.push(pop)
        }
        
        return peek
    }
    
    func empty() -> Bool {
        return stack1.empty()
    }
}

class MyStack {
    var array: [Int] = [], top = -1
    init() { }
    
    func push(_ x: Int) {
        array.append(x)
        top += 1
    }
    
    func pop() -> Int {
        guard !array.isEmpty else { return -1 }
        let element = array.remove(at: top)
        top -= 1
        return element
    }
    
    func peek() -> Int {
        guard !array.isEmpty else { return -1 }
        return array[top]
    }
    
    func empty() -> Bool {
        return top == -1
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */