class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []
        
        for token in tokens {
            if let val = Int(token) {
                // print(val)
                stack.append(val)
                continue
            }
            
            var result = 0
            var num2 = stack.popLast() ?? 0
            var num1 = stack.popLast() ?? 0
            
            switch token {
                case "+": result = num1 + num2
                case "-": result = num1 - num2
                case "*": result = num1 * num2
                case "/": result = num1 / num2
                default: continue
            }
            
            stack.append(result)
        }
        
        // print(stack)
        return stack.popLast() ?? 0
    }
}