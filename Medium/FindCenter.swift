// Find Center of Star Graph

class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        var result = 0
        
        guard let firstArray = edges.first, let lastArray = edges.last else {
            return 0
        }
        
        //find center 
        for number in firstArray {
            for numb in lastArray {
                if number == numb {
                    result = number
                }
            }
        }
        return result
    }
}
