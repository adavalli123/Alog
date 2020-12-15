import Foundation

class Node {
    var next: Node?
    var val: Int?
    
    init(_ val: Int?, next: Node?) {
        self.next = next
        self.val = val
    }
}

class LinkedList {
    /// isEmpty - returns `true` or `false` based on elements present
    var isEmpty: Bool {
        return top == nil
    }
    
    /// top - always returns the top node
    var top: Node?
    
    /* Example run
    after:  Optional(0)
    before:  Optional(0)
    after:  Optional(1)
    before:  Optional(1)
    after:  Optional(2)
    before:  Optional(2)
    after:  Optional(3)
    before:  Optional(3)
    after:  Optional(4)
    before:  Optional(4)
    after:  Optional(5)
    before:  Optional(5)
    after:  Optional(6)
    before:  Optional(6)
    after:  Optional(7)
    before:  Optional(7)
    after:  Optional(8)
    before:  Optional(8)
    after:  Optional(9) */
    func push(_ value: Int) {
        print("before: ", top?.val)
        let newNode = Node(value, next: top)
        top = newNode
        print("after: ", top?.val)
    }
    
    func pop() {
        top = top?.next
    }
}

var linkedList = LinkedList()
linkedList.push(0)
linkedList.push(1)
linkedList.push(2)
linkedList.push(3)
linkedList.push(4)
linkedList.push(5)
linkedList.push(6)
linkedList.push(7)
linkedList.push(8)
linkedList.push(9)
print(linkedList.top?.val)
linkedList.pop()
print(linkedList.top?.val)


