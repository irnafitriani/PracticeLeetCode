class Solution {
    func reverse(_ x: Int) -> Int {
        var number = abs(x)
        let numberToDivide = 10
        var reverseNumber = 0
        
        while number > 0 {
            let reverse = number % numberToDivide
            reverseNumber = reverseNumber * numberToDivide + reverse
            number = number / numberToDivide
        }
        if reverseNumber > Int32.max {
            return 0
        }
        
        if x > 0 {
            return reverseNumber
        }
        return -reverseNumber
    }
}
