//Group the People Given the Group Size They Belong To

class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var groups = [[Int]]()
        var group = [Int:[Int]]()
        
        for i in 0..<groupSizes.count {
            let size = groupSizes[i]
            if group[size] == nil {
                group[size] = [i]
            } else {
                guard var arrayGroup = group[size] else {
                 return groups   
                }
                arrayGroup.append(i)
                group[size] = arrayGroup
            }
        }
        
        for (key,value) in group {
            if value.count <= key {
             groups.append(value)   
            } else {
                var array = [Int]()
                for val in value {
                    if array.count < key {
                        array.append(val)
                    } else {
                        groups.append(array)
                        array.removeAll()
                        array.append(val)
                    }
                }
                groups.append(array)
            }
        }
        return groups
    }
}
