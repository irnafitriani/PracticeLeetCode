//First Missing Positive

class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        let max = nums.count
        if max == 0 {
            return 1
        }
        
        var arr = Array(repeating: 0, count: max)
        for item in nums {
            if item > 0 && item <= max {
                arr[item-1] = item
            }
        }
        
        for i in 0...max-1 {
            if arr[i] == 0 {
                return i + 1
            }
        }
        
        return max + 1
        
    }
}
