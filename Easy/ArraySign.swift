//Sign of the Product of an Array

class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        if nums.contains(0) {
            return 0
        }
        
        var negativeProduct = 0
        
        for num in nums {
            if num < 0 {
                negativeProduct += 1
            }
        }
        
        if negativeProduct % 2 == 0 {
            return 1
        } else {
            return -1
        }
        
    }
}
