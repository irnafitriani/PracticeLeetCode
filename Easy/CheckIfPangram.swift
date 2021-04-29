//Check if the Sentence Is Pangram

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
     let allLetter = "abcdefghijklmnopqrstuvwxyz"
        
        if sentence.count < allLetter.count {
            return false
        }
        
        for letter in allLetter {
            if !sentence.contains(letter) {
                return false
            }
        }
        return true
    }
}
