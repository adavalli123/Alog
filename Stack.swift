
class Stack {
    private var array: [Int] = []

    func push(_ element: Int) {
        array.append(element)
    }
    
    func pop() {
        array.popLast()
    }
    
    func peak() -> Int {
        return array.last ?? -1
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    func display() -> String {
        var description = ""
        
        for i in 0 ..< array.count {
            description += "\(array[array.count - 1 - i]) "
        }
        
        if description.isEmpty {
            return "no elements are present"
        }
        
        return description + "are the elements"
    }
}
