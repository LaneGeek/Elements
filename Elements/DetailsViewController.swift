import UIKit

class DetailsViewController: UIViewController {
    
    // field for the element to detail
    var element = Element()
    
    // label to be populated
    @IBOutlet weak var elelmetDetailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the label to the details
        elelmetDetailsLabel.text = Data.getDetails(element: element)
    }
}
