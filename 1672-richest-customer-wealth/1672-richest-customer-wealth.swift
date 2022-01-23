class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        /*
        1 2 3
        3 2 1
        */
        
        /*
        1 5
        7 3 == 10 is rich
        3 5
        */
        
        var maximumWealth = 0
        for account in accounts { 
            var accountWealth = 0
            defer { maximumWealth = max(maximumWealth, accountWealth) }
            for money in account {
                accountWealth += money
            }
        }
        
        return maximumWealth
    }
}