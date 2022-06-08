



import UIKit

class ViewController: UIViewController {
    
    let numeros = Numeros()
    
    
    //MARK: View Life Cycle 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: IBOulet
    @IBOutlet weak var counterLabel: UILabel!
    
    
    // MARK: IBAction
    @IBAction func addButton(_ sender: UIButton) {
        numeros.soma(counterLabel)
    }
    
    @IBAction func subButton(_ sender: Any) {
        numeros.subtrai(counterLabel, alertaController: self)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        numeros.resetAll(counterLabel)
    }
}
