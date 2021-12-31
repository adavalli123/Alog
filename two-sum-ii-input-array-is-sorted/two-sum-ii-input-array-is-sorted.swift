class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:], output: [Int] = []
    
        numbers.enumerated().forEach { 
            if dict[$1] != nil {
                output = [dict[$1]! + 1, $0 + 1] 
                return
            }
            
            dict[target - $1] = $0
        }
        
        return output
    }
}