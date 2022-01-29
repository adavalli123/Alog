class Solution {
    /* func trap(_ height: [Int]) -> Int {
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
            
            if min(lmax, rmax) - height[i] > 0 {
                trap += min(lmax, rmax) - height[i]
            }
        }
        
        return trap
    } 
    
    func trap(_ height: [Int]) -> Int {
        var ans = 0
        var rStack = Array(repeating: 0, count: height.count)
        var lStack = rStack
        
        for i in height.indices {
            if i == 0 {
                lStack[i] = height[i]
                continue
            }
            
            lStack[i] = max(lStack[i-1], height[i])
        }
        
        for j in stride(from: height.indices.last!, through: 0, by: -1) {
            if j == height.indices.last {
                rStack[j] = height[j]
                continue
            }
            
            rStack[j] = max(rStack[j+1], height[j])
        }
        
        for i in height.indices {
            // print((lStack[i], rStack[i], height[i]))
            // if min(lStack[i], rStack[i]) - height[i] > 0 {
                ans += min(lStack[i], rStack[i]) - height[i]
            // }
        }
        
        return ans
    } */
    
    func trap(_ height: [Int]) -> Int {
        var ans = 0, current = 0, stack: [Int] = []
        
        while current < height.count {
            while stack.isEmpty == false, height[current] > height[stack.last!] {
                guard let pop = stack.popLast() else { return -1 }
                guard stack.isEmpty == false else { break }
                let distance = current - stack.last! - 1
                // print((current, pop, stack.last))
                let boundedHeight = min(height[current], height[stack.last!]) - height[pop]
                ans += boundedHeight * distance
            }
            
            stack.append(current)
            current += 1
        }
        
        return ans
    }
}