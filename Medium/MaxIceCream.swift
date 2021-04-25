// Maximum Ice Cream Bars

class Solution {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        let sortedCost = costs.sorted()
        var money = coins 
        var result = 0
        
        for cost in sortedCost {
            if money >= cost {
                money -= cost
                result += 1
            }
        }
        
        return result
        
    }
}
