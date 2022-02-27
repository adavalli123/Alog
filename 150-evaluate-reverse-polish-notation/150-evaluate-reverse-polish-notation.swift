class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        for i in 0..<tokens.count {
            if let num = Int(tokens[i]) {
                stack.append(num)
            } else {
                let num1 = stack.removeLast()
                let num2 = stack.removeLast()
                stack.append(eval(num2, num1, tokens[i]))
            }    
        }
        
        return stack[0]
    }
    
    func eval(_ num1: Int, _ num2: Int, _ op: String) -> Int {
        switch op {
            case "+": 
            return num1 + num2
            case "-":
            return num1 - num2
            case "*":
            return num1 * num2
            case "/":
            return (num1 / num2)//.truncatingRemainder(dividingBy: 1)
            default: 
            return 0
        }
    }
}