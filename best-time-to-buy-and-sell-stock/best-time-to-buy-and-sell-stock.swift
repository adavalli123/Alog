class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        var minPrice = Int.max
        var maxProfit = 0
        
        prices.forEach {
            if minPrice > $0 { minPrice = $0 }
            
            let profit = $0 - minPrice
            if maxProfit < profit {
                maxProfit = profit
            }
        }
        
        return maxProfit
    }
}