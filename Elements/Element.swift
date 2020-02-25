import Foundation

class Element {
    
    // properties
    var atomicNumber = 0
    var symbol = ""
    var name = ""
    
    // computed property
    var period: Int {
        if atomicNumber < 3 {
            return 1
        }
        
        if atomicNumber < 11 {
            return 2
        }
        
        if atomicNumber < 19 {
            return 3
        }
        
        if atomicNumber < 37 {
            return 4
        }
        
        if atomicNumber < 55 {
            return 5
        }
        
        if atomicNumber < 87 {
            return 6
        }
        
        return 7
    }
    
    // another computer property
    var isNatural: Bool { atomicNumber < 95 }
}
