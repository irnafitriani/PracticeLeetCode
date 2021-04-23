//Design an Ordered Stream

class OrderedStream {
    var n: Int
    var array: [String] = []
    init(_ n: Int) {
        self.n = n
        for i in 1...n {
            array.append("")
        }
    }
    
    func insert(_ idKey: Int, _ value: String) -> [String] {
        array[idKey - 1] = value
        let indexBefore = idKey - 2
        var printArray = [String]()
        
        for i in 0...n - 1 {
            if array[i] == "" {
                return printArray
            }
            if i >= idKey - 1 {
                printArray.append(array[i])
            }
        }
        
        return printArray
        
    }
}
