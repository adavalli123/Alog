class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var left = 0, right = chars.count, currIndex = 0
        
        while left < right {
            let char = chars[left]
            var counter = 0
            
            while left < right, chars[left] == char {
                counter += 1
                left += 1
            }
            
            chars[currIndex] = char
            currIndex += 1
            
            if counter > 1 {
                for ch in Array(String(counter)) {
                   chars[currIndex] = ch
                    currIndex += 1
                }
            }
        }
        
        chars = Array(chars[0 ..< currIndex])
        return chars.count
    }
}