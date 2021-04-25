//First Missing Positive

class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var counter = 0
        var smallest = 1
        
        while counter < nums.count {
            if nums.contains(smallest) {
                smallest += 1
            } else {
                return smallest
            }
            counter += 1
        }
        
        return smallest
        
    }
}
