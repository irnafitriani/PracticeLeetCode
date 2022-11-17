class Solution {
    func longestDiverseString(_ a: Int, _ b: Int, _ c: Int) -> String {
        var result: [Character] = []
        
        let map: [Character: Int] = ["a": a, "b": b, "c": c]
        var keyVals = map.sorted(by: {$0.1 > $1.1})

        var size = a + b + c
        var idx = 0
        while size > 0 {
            idx = 0
            var v = keyVals[0].value
            var c = keyVals[0].key
            if result.count >= 2 && (c == result[result.count - 1] && c == result[result.count - 2]) {
                idx = 1
                v = keyVals[1].value
                c = keyVals[1].key
                if (c == result[result.count - 1] && c == result[result.count - 2]) {
                    idx = 2
                    v = keyVals[2].value
                    c = keyVals[2].key
                }
            }
            
            if v > 0 {
                result.append(c)
                keyVals[idx].value -= 1
                keyVals = keyVals.sorted(by: {$0.1 > $1.1})
            }
            
            size -= 1
        }
        
        
        return String(result)
    }
}
