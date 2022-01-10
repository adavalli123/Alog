class Solution {
    func isValid(_ s: String) -> Bool {
        var s = s, left = 0, stack: [Character] = []
        let dict: [Character: Character] = [
            "(": ")",
            "[": "]",
            "{": "}"
        ]
        
        for ch in s {
            if let pop = stack.last, pop == ch { stack.popLast(); continue }
            if dict[ch] != nil { stack.append(dict[ch]!) }
            else { return false }
            
        }
        
        return stack.isEmpty
    }
}