class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []
        
        outerloop: for asteroid in asteroids {
            innerloop: while !stack.isEmpty, stack.last! >= 0, asteroid < 0 { 
                if stack.last! > abs(asteroid) { continue outerloop }
                if stack.last == abs(asteroid) { stack.popLast(); continue outerloop }
                stack.popLast()
                // continue innerloop
            }
            
            stack.append(asteroid)
        }
        
        return stack
    }
}