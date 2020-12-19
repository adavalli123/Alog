import Foundation

/* Problem Statement - Infix to Postfix
 P - Parentheses first
 E - Exponents (ie Powers and Square Roots, etc.)
 MD - Multiplication and Division (left-to-right)
 AS - Addition and Subtraction (left-to-right)
 
 Geek of Geeks - https://www.geeksforgeeks.org/stack-set-2-infix-to-postfix/
 
 a + b here a and b are operands and + is operator
 
 Algorithm 
 1. Scan the infix expression from left to right. 
 2. If the scanned character is an operand, output it. 
 3. Else, 
    1 If the precedence of the scanned operator is greater than the precedence of the operator in the stack(or the stack is empty           or the stack contains a ‘(‘ ), push it. 
    2 Else, Pop all the operators from the stack which are greater than or equal to in precedence than that of the scanned operator. After doing that Push the scanned operator to the stack. (If you encounter parenthesis while popping then stop there and push the scanned operator in the stack.) 
 4. If the scanned character is an ‘(‘, push it to the stack. 
 5. If the scanned character is an ‘)’, pop the stack and and output it until a ‘(‘ is encountered, and discard both the parenthesis. 
 6. Repeat steps 2-6 until infix expression is scanned. 
 7. Print the output 
 8. Pop and output from the stack until it is not empty.
 */

/// Order of the precidence of operators
let precidence: [Character: Int] = [
    "(": 1,
    ")": 1,
    "^": 1,
    "*": 2,
    "/": 2,
    "+": 3,
    "-": 3
]

class Solution: NSObject {
    var stack = Stack()
    var ouputString = ""
    
    func infixToPostfix(_ s: String) -> String {
        for ch in s {
            if stack.isEmpty {
                stackIsEmptyThenPush(ch)
            } else if ch == "(" {
                stack.push(ch)
            } else if ch == ")" {
                popUntilItFindsOpenBracket()
            } else {
                checkPrecedenceAndPush(ch)
            } 
        }
        
        popAllElementsUntilStackIsEmpty()
        return ouputString
    }
    
    // no operator is present so push it
    func stackIsEmptyThenPush(_ ch: Character) {
        if let ranking = precidence[ch] {
            if stack.isEmpty {
                stack.push(ch)
            }
        } else {
            self.ouputString += "\(ch)"
        }
    }
    
//      If the precedence of the scanned operator is greater than the precedence of the operator in the stack(or the stack is empty           or the stack contains a ‘(‘ ), push it.
    func checkPrecedenceAndPush(_ ch: Character) {
        if let ranking = precidence[ch] {
            if let topCh = stack.top?.val {
                if let topRanking = precidence[topCh] {
                    print(ch, topCh, ranking, topRanking)
                    if topRanking > ranking {
                        stack.push(ch)
                    } else {
                        popAllElementsUntilStackIsEmpty()
                        stack.push(ch)
                    }
                }
            }
        } else {
            self.ouputString += "\(ch)"
        }
    }
    
    func popAllElementsUntilStackIsEmpty() {
        while let topCh = stack.top?.val, topCh != "(" {
            stack.pop()
            self.ouputString += "\(topCh)"
        }
    }
    
    func popUntilItFindsOpenBracket() {
        while let topCh = stack.top?.val, topCh != "(" {
            stack.pop()
            
            self.ouputString += "\(topCh)"
        }
        
        stack.pop()
    }
}


class Node {
    var next: Node?
    var val: Character?
    
    init(_ val: Character?, next: Node?) {
        self.next = next
        self.val = val
    }
}

class Stack {
    /// isEmpty - returns `true` or `false` based on elements present
    var isEmpty: Bool {
        return top == nil
    }
    
    /// top - always returns the top node
    var top: Node?
    
    func push(_ value: Character) {
        let newNode = Node(value, next: top)
        top = newNode
    }
    
    func pop() {
        top = top?.next
    }
}

let sol = Solution()
print(sol.infixToPostfix("a+b*(c^d-e)^(f+g*h)-i"))
//  abcd^e-fgh*+^*+i-



