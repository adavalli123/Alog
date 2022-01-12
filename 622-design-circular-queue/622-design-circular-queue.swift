
class MyCircularQueue {
    var elements: [Int], head = -1, tail = -1
    
    init(_ k: Int) {
        self.elements = [Int](repeating: -1, count: k)
    }
    
    func enQueue(_ value: Int) -> Bool {
        // handle full, empty and non empty case
        if isFull() { return false }
        else if isEmpty() { 
            head = 0
            tail = 0
            elements[tail] = value
        } else {
            tail = (tail+1)%elements.count
        }
            
        elements[tail] = value
        return true
    }
    
    func deQueue() -> Bool {
        // handle empty, see front and tail is same
        if isEmpty() { return false }
        else if head == tail {
            head = -1
            tail = -1
        } else {
            head = (head+1) % elements.count
        }
        
        return true
    }
    
    func Front() -> Int {
        guard !isEmpty() else { return -1 }
        return elements[head]
    }
    
    func Rear() -> Int {
        guard !isEmpty() else { return -1 }
        return elements[tail]
    }
    
    func isEmpty() -> Bool {
        return head == -1 && tail == -1
    }
    
    func isFull() -> Bool {
        return (tail + 1) % elements.count == head
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */