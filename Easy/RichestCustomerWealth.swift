class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var wealths = [Int]()
        
        for account in accounts {
            var wealth = 0
            for amount in account {
                wealth += amount
            }
            wealths.append(wealth)
        }
        
        guard let maxWealth = wealths.max() else{
            return 0
        }
        
        return maxWealth
    }
}
