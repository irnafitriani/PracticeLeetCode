class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        let arrayJewel = jewels.map{String($0)} 
        let arrayStones = stones.map{ String($0) }
        var result = 0
        
        for stone in arrayStones {
            if arrayJewel.contains(stone) {
                result += 1
            }
        }
        return result
    }
}
