class ParkingSystem {
    var big = 0
    var medium = 0
    var small = 0

    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        var result = true
         switch carType {
            case 1:
             if big > 0 {
                 big -= 1
                 result = true
             } else {
                 result = false
             }
             case 2: 
             if medium > 0 {
                 medium -= 1
                 result = true
             } else {
                 result = false
             }
             case 3:
             if small > 0 {
                 small -= 1
                 result = true
             } else {
                 result = false
             }
            default:
                break
            }
        return result
    }
}
