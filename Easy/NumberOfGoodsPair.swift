class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var pair = 0
        let firstPair = nums.count - 2
        let secondPair = nums.count - 1
        
        for index in 0...firstPair{
            for index2 in 1...secondPair {
                if nums[index] == nums[index2] && index < index2 {
                    pair += 1
                }
            }
        }
        return pair
    }
}
