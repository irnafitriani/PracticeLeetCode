//How Many Numbers Are Smaller Than the Current Number
class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        
        for i in 0..<nums.count {
            let numberI = nums[i]
            var counter = 0
            for j in 0..<nums.count {
                if i != j && nums[j] < numberI {
                    counter += 1
                }
            }
            result.append(counter)
        }
        return result
    }
}
