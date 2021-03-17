//Number of Steps to Reduce a Number to Zero
class Solution {
    func numberOfSteps (_ num: Int) -> Int {
        var steps = 0
        var number = num
        while number > 0 {
            if number % 2 == 0 {
                number = number / 2
                steps += 1
            } else {
                number = number - 1
                steps += 1
            }
        }
        return steps
    }
}
