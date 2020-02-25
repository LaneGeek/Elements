import UIKit

class ElementsTableViewController: UITableViewController {

    // get the array of elements and sort it alphabetically
    var elements = Data.getElements().sorted { $0.name < $1.name }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "elementCell", for: indexPath)
        // get the element name and set the cell's text to it
        cell.textLabel?.text = elements[indexPath.row].name
        return cell
    }
}
