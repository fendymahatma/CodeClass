import UIKit

class FirstPageVC: UIViewController {

    @IBOutlet weak var labelUtama: UILabel!
    @IBOutlet weak var buttonSubmit: UIButton!
    @IBOutlet weak var InputText: UITextField!
    @IBOutlet weak var btAlert: UIButton!
    
    var pria = Manusia(nama: "Fendy", umur: 22, berat: 60)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.labelUtama.text = "Hi \(pria.nama) (\(pria.umur, pria.berat))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //keluarkan alert
    @IBAction func btAelrtClick(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    //input untuk pindah ke halaman dan kirim inputan
    @IBAction func buttonClick(_ sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondPageVC {
            if pria.nama .isEmpty {
                pria.nama = "Fendy"
            }else {
                pria.nama = InputText.text!
                self.labelUtama.text = pria.nama
            }
            
            secondVC.information = "Hi \(pria.nama) (\(pria.umur, pria.berat))"
            self.present(secondVC, animated: true, completion: nil)
        }
    }

}

