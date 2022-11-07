class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let allNums = nums1 + nums2
        let numSorted = allNums.sorted()

        if numSorted.count % 2 == 0 {
            return Double((numSorted[(numSorted.count / 2)] + numSorted[(numSorted.count / 2) - 1])) / 2
        } else {
            return Double(numSorted[(numSorted.count - 1) / 2])
        }
    }
}
