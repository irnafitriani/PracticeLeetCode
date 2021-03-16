class SubrectangleQueries {
    
    var rectangle = [[Int]]()

    init(_ rectangle: [[Int]]) {
        self.rectangle = rectangle
    }
    
    func updateSubrectangle(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int, _ newValue: Int) {
        for i in 0..<rectangle.count {
            if i >= row1 && i <= row2 {
                var row = rectangle[i]
                for j in 0..<row.count {
                    if j >= col1 && j <= col2 {
                        row[j] = newValue
                    }
                }
                rectangle[i] = row
            }
        }
    }
    
    func getValue(_ row: Int, _ col: Int) -> Int {
        var value = 0
        for i in 0..<rectangle.count {
            if i == row {
                let valueToGet = rectangle[i]
                for j in 0..<valueToGet.count {
                    if j == col {
                        value = valueToGet[j]
                    }
                }
            }
        }
        
        return value
    }
}
