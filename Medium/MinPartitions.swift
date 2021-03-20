//Partitioning Into Minimum Number Of Deci-Binary Numbers

class Solution {
    func minPartitions(_ n: String) -> Int {
        guard let result = n.compactMap { Int(String($0))}.max() else {
            return 0
        }
        return result
    }
}
