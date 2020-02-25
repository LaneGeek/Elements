import Foundation
import CSV

class Data {
    
    static func getElements() -> Array<Element> {
        
        // array of elements
        var elements: Array<Element> = []
        
        // extract the data from the csv file
        let filePath = Bundle.main.path(forResource: "ElementList", ofType: "csv")
        let stream = InputStream(fileAtPath: filePath!)!
        let csv = try! CSVReader(stream: stream)
        while let row = csv.next() {
            // create a temporary element then append to the array
            let element = Element()
            element.atomicNumber = Int(row[0])!
            element.symbol = row[1]
            element.name = row[2]
            elements.append(element)
        }
        
        // return the array
        return elements
    }
    
    static func getDetails(element: Element) -> String {
        var output = "The element \(element.name) has an atomic number of \(element.atomicNumber). The period is \(element.period). Because the atomic number is "
        output += element.isNatural ? "less than 95, it is a naturally occuring element. "
            : "more than 94, it is a synthesized element. "
        output += "By the way, the symbol for \(element.name) is \(element.symbol)."
        return output
    }
}
