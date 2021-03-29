//Widest Vertical Area Between Two Points Containing No Points

class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        var maxWidth = 0
        var xs = [Int]()
        
        for arr in points {
            if let x = arr.first {
                xs.append(x)
            }
        }
        
        xs = xs.sorted()
        
        for i in 0..<xs.count {
            let j = i + 1
            if j < xs.count {
                let width = xs[j] - xs[i]
                if width > maxWidth {
                    maxWidth = width
                }
            } else {
                break
            }
        }
        
        return maxWidth
        
    }
}
