class Solution {
    func romanToInt(_ s: String) -> Int {
        var result = 0
  for (i, char) in s.enumerated() {
    switch char {
    case "I":
      result += 1
    case "V":
      result += 5
      if i > 0{
        let prevChar = s[s.index(s.startIndex, offsetBy: i - 1)]
        if prevChar == "I" {
          result -= 2
        }
      }
    case "X":
      result += 10
      if i > 0{
        let prevChar = s[s.index(s.startIndex, offsetBy: i - 1)]
        if prevChar == "I" {
          result -= 2
        }
      }
    case "L":
      result += 50
      if i > 0{
        let prevChar = s[s.index(s.startIndex, offsetBy: i - 1)]
        if prevChar == "X" {
          result -= 20
        }
      }
    case "C":
      result += 100
      if i > 0{
        let prevChar = s[s.index(s.startIndex, offsetBy: i - 1)]
        if prevChar == "X" {
          result -= 20
        }
      }
    case "D":
      result += 500
      if i > 0{
        let prevChar = s[s.index(s.startIndex, offsetBy: i - 1)]
        if prevChar == "C" {
          result -= 200
        }
      }
    case "M":
      result += 1000
      if i > 0{
        let prevChar = s[s.index(s.startIndex, offsetBy: i - 1)]
        if prevChar == "C" {
          result -= 200
        }
      }
    default:
      break
    }
  }
  return result
    }
}
