
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

var stack = Stack()
var input = [2, 4, 10, 5, 1]

func getMinElements(from input: [Int]) -> [Int] {
    var left = 0
    var array: [Int] = []
    
    while left < input.count {
        let peak = stack.peak()
        if input[left] > peak {
            array.append(peak)
        } else {
            stack.pop()
        } 
        stack.push(input[left])
        left += 1
    }
    return array
}

print(getMinElements(from: input))

