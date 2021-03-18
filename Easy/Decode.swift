// Decode XORed Array

class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var result = [first]
        var decoded = first
        
        for number in encoded {
            decoded = number ^ decoded
            result.append(decoded)
        }
        
        return result
    }
}
