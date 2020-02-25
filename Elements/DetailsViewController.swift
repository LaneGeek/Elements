import UIKit

class DetailsViewController: UIViewController {
    
    // field for the element to detail
    var element = Element()
    
    // label to be populated
    @IBOutlet weak var elelmetDetailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        elelmetDetailsLabel.text = element.name

        // Do any additional setup after loading the view.
    }
}
