class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result = 0
        var results = [Int]()
        for num in nums {
            result += num
            results.append(result)
        }
        return results
    }
}
