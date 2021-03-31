//Max Increase to Keep City Skyline
  /* 
  first :
  - find left max and top max in each grid
  - add left max and top max into another array we called arrayLeftmax and array topmax
  - iterate each grid to know how many we increase each number in grid by find the minimun of topMax[j] and leftMax [i] 
      and substract the number with each number in our grid
  - add the previous number for the result

*/ 
   

class Solution {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        var result = 0
        var arrayLeftMax = [Int]()
        var arrayTopMax = [Int]()
        var leftMax = 0
        var topMax = 0
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if leftMax < grid[i][j] {
                    leftMax = grid[i][j]
                }
                
                if topMax < grid[j][i] {
                    topMax = grid[j][i]
                }
            }
            arrayLeftMax.append(leftMax)
            leftMax = 0
            arrayTopMax.append(topMax)
            topMax = 0
        }
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                let temp  = min(arrayTopMax[j],arrayLeftMax[i])
                result += temp - grid[i][j]
            }
        }
        return result
        
    }
}
