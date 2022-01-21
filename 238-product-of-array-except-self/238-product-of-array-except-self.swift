class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var product = 1
        var flag = 0
        var output: [Int] = []
        
        for num in nums {
            if num == 0 {
                flag += 1
                continue
            }
            
            product *= num
        }
        
        for num in nums {
            if flag >= 2 {
                output.append(0)
                continue
            }
            
            if flag == 1 {
                if num == 0 {
                    output.append(product)
                    continue
                } 
                
                output.append(0)
                continue
            }
            
            output.append(product/num)
        }
        
        return output
    }
}