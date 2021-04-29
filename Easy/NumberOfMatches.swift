//Count of Matches in Tournament

class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var teamAdvance = n
        var matches = 0
        var totalMatches = 0
        
        while teamAdvance > 1 {
            if teamAdvance % 2 == 0 {
                matches = teamAdvance / 2
                totalMatches += matches
                teamAdvance = teamAdvance / 2
                
            } else {
                matches = (teamAdvance - 1) / 2 
                totalMatches += matches
                teamAdvance = teamAdvance - matches
            }
        }
        
        return totalMatches
    }
}
