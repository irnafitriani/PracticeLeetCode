// XOR Operation in an Array

class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var array = [start]
        var number = start
        var index = 1
        
        while index < n {
            number += 2
            array.append(number)
            index += 1
        } 
        
        var result = 0
        for number in array {
            result = result ^ number
        }
        
        return result
    }
}
