class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result = [Bool]()
        let maxCandy = candies.max() ?? 0
        
        for candy in candies {
            if candy + extraCandies < maxCandy {
                result.append(false)
            } else {
                result.append(true)
            }
        }
        return result
    }
}
