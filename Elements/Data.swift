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
}
