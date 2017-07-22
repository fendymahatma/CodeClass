import UIKit

class SecondPageVC: UIViewController {

    @IBOutlet weak var LabelInformation: UILabel!
    @IBOutlet weak var buttonBack: UIButton!
    
    var information:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LabelInformation.text = information
    }

    @IBAction func buttonBackClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
