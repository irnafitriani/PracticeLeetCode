class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var stringNumberArray = Array(String(num))
        if let index = stringNumberArray.firstIndex(of: "6"){
            stringNumberArray[index] = "9"
        }

        return Int(String(stringNumberArray)) ?? num
    }
}
