//Subtract the Product and Sum of Digits of an Integer
class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var stringNumber = String(n)
        var arrayInt = stringNumber.map { Int(String($0)) ?? 0 }
        var products = 1
        var sum = 0
        
        for number in arrayInt {
            products *= number
            sum += number
        }
        
        return products - sum
    }
}
