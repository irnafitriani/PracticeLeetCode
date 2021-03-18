//Decompress Run-Length Encoded List

class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        
        var index = 0
        while index < nums.count {
            let freq = nums[index]
            let val = nums[index+1]
            
            for i in 1...freq {
                result.append(val)
            }
            index += 2
        }
        return result
    }
}
