class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var ans = 1.0, x = x, n = n
        
        if n < 0 {
            x = 1.0 / x
            n = -n
        }

        while n > 0 {
            if n % 2 == 1 { ans *= x }
            x *= x
            n = n / 2
        }
           
        return ans
    }
}