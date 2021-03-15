class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var result = 0
        var key = 3
        
        switch ruleKey {
            case "type":
                key = 0
            case "color":
                key = 1
            case "name":
                key = 2
            default:
                break
        }
        
        for item in items {
            if item[key] == ruleValue{
                result += 1
            }
        }
        return result
    }
}
