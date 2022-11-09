class Solution {
    func maxScoreWords(_ words: [String], _ letters: [Character], _ score: [Int]) -> Int {
        func helper( _ index: Int, _ letterCounts: inout [Character: Int], _ currentScore: Int, _ result: inout Int) {
            result = max(result, currentScore)
            for i in index..<words.count {
                let word = processedWords[i]
                var isPossible = true
                
                // Is word possible
                for (key, val) in word {
                    if letterCounts[key, default: 0] < val {
                        isPossible = false
                        break
                    } 
                }
                
                if !isPossible {
                    continue
                }
                
                // Update score
                var newScore = currentScore
                for (key,val) in word {
                    letterCounts[key, default: 0] -= val
                    newScore += (scoreMap[key]! * val)
                }
                
                helper(i + 1, &letterCounts, newScore, &result)
                
                // Backtrack
                for (key,val) in word {
                    letterCounts[key, default:0] += val
                }
            }
        }
        
        
        // create processed words
        var processedWords = [[Character:Int]]()
        for word in words {
            var wordCounts = [Character:Int]()
            for char in word {
                wordCounts[char, default: 0] += 1
            }
            processedWords.append(wordCounts)
        }
        
        // create a score set
        var scoreMap = [Character: Int]()
        for i in 0..<26 {
            scoreMap[Character(UnicodeScalar(97 + i)!)] = score[i]
        }
        
        var letterCounts = [Character:Int]()
        for letter in letters {
            letterCounts[letter, default: 0] += 1
        }     
        
        var result = 0
        helper(0, &letterCounts, 0, &result)
        return result
    }
}
