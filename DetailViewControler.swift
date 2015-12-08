import UIKit
import MapKit
import CoreLocation

protocol DetailViewControlerDelegate {
    func stateChange()
}

class DetailViewControler: UIViewController {

    
    var delegate: DetailViewControlerDelegate?
    var memory: String!
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    override func viewDidLoad() {
        

        buttonOne.setImage(UIImage(named: "boscombe"), forState: .Normal)
        buttonTwo.setImage(UIImage(named: "bournemouth"), forState: .Normal)
        
        print (memory)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.stateChange()
    }
    

}


