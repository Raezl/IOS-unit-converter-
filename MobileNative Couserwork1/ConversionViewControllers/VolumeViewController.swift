import UIKit

class VolumeViewController: UIViewController, KeyboardDelegate {

    @IBOutlet weak var txtGallon: UITextField!
    @IBOutlet weak var txtLitre: UITextField!
    @IBOutlet weak var txtUKPint: UITextField!
    @IBOutlet weak var txtMililitre: UITextField!
    @IBOutlet weak var txtFluidOunce: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Get input from the keyboard and set onto the active textfield
    func keyWasTapped(character: String) {
        view.selectedTextField.insertText(character)
    }
    
    func clearTextFields(){
        for i in view.textFieldList{
            i.text = ""
        }
    }
    
    func decimal() {
        if view.selectedTextField.text!.contains("."){
            let errorMessage = UIAlertController(title: "Error", message: "Cannot input multiple decimals.", preferredStyle: .alert)
            errorMessage.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(errorMessage, animated: true, completion: nil)
        }
        else{
            view.selectedTextField.insertText(".")
        }
    }
    
    
    func backspace() {
        if view.selectedTextField.text!.count > 0{
            view.selectedTextField.deleteBackward()
        }
    }
    
    func negative() {
        let errorMessage = UIAlertController(title: "Error", message: "Only available in tempareture conversion.", preferredStyle: .alert)
        errorMessage.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(errorMessage, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set custom keyboard as input source
        let keyboardView = Keyboard(frame: CGRect(x: 0, y: 0, width: 0, height: 350))
        keyboardView.delegate = self
        
        //iterate through the list of text fields to set input source
        for i in view.textFieldList{
            i.inputView = keyboardView
        }
    }
    
    let conversionObj = Conversions()
    
    @IBAction func editGallon(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtLitre.text = String(conversionObj.gallonToLitre(Float(value)!))
                txtUKPint.text = String(conversionObj.gallonToUKPint(Float(value)!))
                txtMililitre.text = String(conversionObj.gallonToMillilitre(Float(value)!))
                txtFluidOunce.text = String(conversionObj.gallonToFluidOunces(Float(value)!))

            }
        }else{
            clearTextFields()
        }
    }
    
    @IBAction func editLitre(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtGallon.text = String(conversionObj.litreToGallon(Float(value)!))
                txtUKPint.text = String(conversionObj.gallonToUKPint(Float(value)!))
                txtMililitre.text = String(conversionObj.gallonToMillilitre(Float(value)!))
                txtFluidOunce.text = String(conversionObj.gallonToFluidOunces(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editUKPint(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtLitre.text = String(conversionObj.gallonToLitre(Float(value)!))
                txtGallon.text = String(conversionObj.ukPintToGallon(Float(value)!))
                txtMililitre.text = String(conversionObj.gallonToMillilitre(Float(value)!))
                txtFluidOunce.text = String(conversionObj.gallonToFluidOunces(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editMililitre(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtLitre.text = String(conversionObj.gallonToLitre(Float(value)!))
                txtUKPint.text = String(conversionObj.gallonToUKPint(Float(value)!))
                txtGallon.text = String(conversionObj.millilitreToGallon(Float(value)!))
                txtFluidOunce.text = String(conversionObj.gallonToFluidOunces(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    
    @IBAction func editFluidOunce(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtLitre.text = String(conversionObj.gallonToLitre(Float(value)!))
                txtUKPint.text = String(conversionObj.gallonToUKPint(Float(value)!))
                txtMililitre.text = String(conversionObj.gallonToMillilitre(Float(value)!))
                txtGallon.text = String(conversionObj.fluidOuncesToGallon(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    
    @IBAction func btnSave(_ sender: Any) {
    
    }
}
