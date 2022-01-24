class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var num1 = num1, num2 = num2
        var len = max(num1.count, num2.count)
        var carry = false, result = ""
        
        while num1.count - len < 0 {
            num1.insert(Character("0"), at: num1.startIndex)
        }
        
        while num2.count - len < 0 {
            num2.insert(Character("0"), at: num1.startIndex)
        }
        
        for i in stride(from: len - 1, through: 0, by: -1) {
            let no1 = String(num1[num1.index(num1.startIndex, offsetBy: i)])
            let no2 = String(num2[num2.index(num1.startIndex, offsetBy: i)])
            var sum = String(Int(no1)! + Int(no2)! + (carry ? 1 : 0))
            carry = sum.count == 2 ? true : false
            
            if len - i == len {
                result = sum + result
            } else {
                result = String(sum.last!) + result
            }
        }
        
        return result
    }
}