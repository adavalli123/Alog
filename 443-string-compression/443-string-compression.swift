class Solution {
    func compress(_ chars: inout [Character]) -> Int {
          var str = "", left = 1, right = chars.count, count = 1
        
        while left < right {
            if chars[left - 1] == chars[left] {
                count += 1
                left += 1
                continue
            }  
            
            if count > 1 {
                str += String(chars[left-1]) + String(count)
            } else {
                str += String(chars[left-1]) 
            }
            count = 1
            left += 1
        }
        
        if left - 2 >= 0, chars[left - 2]  == chars[left - 1] {
            if count > 1 {
                str += String(chars[left-1]) + String(count)
            } else {
                str += String(chars[left-1]) 
            }
        } else {
            str += String(chars[left-1]) 
        } 
        
        chars = Array(str)
        
        return str.count
    }
}