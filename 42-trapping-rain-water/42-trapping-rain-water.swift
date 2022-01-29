class Solution {
    func trap(_ height: [Int]) -> Int {
        var trap = 0
        
        var l = 0, r = 0
        for i in height.indices {
            var lmax = 0, rmax = 0 
            if i == 0 { lmax = height[i] }
            
            l = i
            while l >= 0 {
                defer { l -= 1 }
                if height[l] > lmax {
                    lmax = height[l]
                }
            }
            
            r = i
            while r < height.count {
                defer { r += 1 }
                if height[r] > rmax {
                    rmax = height[r]
                }
            }
            
            // print((lmax, rmax, height[i]))
            if min(lmax, rmax) - height[i] > 0 {
                trap += min(lmax, rmax) - height[i]
            }
        }
        
        return trap
    }
}