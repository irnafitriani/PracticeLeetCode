class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let numberToDivide = 10
        var reverseNumber = 0
        var number = x
        
        while number > 0 {
            let reverse = number % numberToDivide
            number = number / numberToDivide
            reverseNumber = reverseNumber * numberToDivide + reverse
        }
        
        if reverseNumber == x {
            return true
        }
        return false
        
    }
}
