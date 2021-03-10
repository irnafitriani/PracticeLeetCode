class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        
        for index in 0..<nums.count {
            if index < n {
                result.append(nums[index])
                result.append(nums[index + n])
            }
        }
        
        return result
    }
}
