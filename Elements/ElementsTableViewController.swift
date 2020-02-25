import UIKit

class ElementsTableViewController: UITableViewController {

    // get the array of elements and sort it alphabetically
    var elements = Data.getElements().sorted { $0.name < $1.name }
    
    // a single element which will be sent to the details view
    var element = Element()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "elementCell", for: indexPath)
        // get the element name and set the cell's text to it
        cell.textLabel?.text = elements[indexPath.row].name + ", " + elements[indexPath.row].symbol
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // get the element ready
        element = elements[indexPath.row]
        performSegue(withIdentifier: "detailsSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let details = segue.destination as? DetailsViewController {
            // fille the outgoing element with the chosen element
            details.element = element
        }
    }
}
