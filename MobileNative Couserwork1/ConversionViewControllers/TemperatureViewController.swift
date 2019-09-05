//
//  TemperatureViewController.swift
//  MobileNative Couserwork1
//
//  Created by Yasiru Lakruwan on 12/04/2019.
//  Copyright © 2019 Yasiru Lakruwan. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController, KeyboardDelegate {

    @IBOutlet weak var txtCelcius: UITextField!
    @IBOutlet weak var txtKelvin: UITextField!
    @IBOutlet weak var txtFahrenheit: UITextField!
    
    
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
        if view.selectedTextField.text!.contains(".") {
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
        if view.selectedTextField.text!.contains("-"){
            let errorMessage = UIAlertController(title: "Error", message: "Cannot insert multiple negative signs.", preferredStyle: .alert)
            errorMessage.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(errorMessage, animated: true, completion: nil)
        }else if view.selectedTextField.text == ""{
             view.selectedTextField.text = "-"
        }
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
    
    @IBAction func editCelcius(_ sender: Any) {
        if view.selectedTextField.text! != "" && view.selectedTextField.text! != "-"{
            if let value = view.selectedTextField.text{
                txtKelvin.text = String(conversionObj.celciusToKelvin(Float(value)!))
                txtFahrenheit.text = String(conversionObj.celciusToFahrenheit(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    
    @IBAction func editKelvin(_ sender: Any) {
        if view.selectedTextField.text! != "" && view.selectedTextField.text! != "-"{
            if let value = view.selectedTextField.text{
                txtCelcius.text = String(conversionObj.kelvinToCelsius(Float(value)!))
                txtFahrenheit.text = String(conversionObj.kelvinToFahrenheit(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    
    @IBAction func editFahrenheit(_ sender: Any) {
        if view.selectedTextField.text! != "" && view.selectedTextField.text! != "-"{
            if let value = view.selectedTextField.text{
                txtKelvin.text = String(conversionObj.fahrenheitToKelvin(Float(value)!))
                txtCelcius.text = String(conversionObj.fahrenheitToCelsius(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    
    @IBAction func btnSave(_ sender: Any) {
        let saveObj = Saves()
        if txtCelcius.text != "" && txtKelvin.text != "" && txtFahrenheit.text != ""{
            let saveString = "Celcius: \(txtCelcius.text!) = Kelvin: \(txtKelvin.text!) = Fahrenheit: \(txtFahrenheit.text!) "
            saveObj.setSave(key: "Temperature", saveString: saveString)
            
            let errorMessage = UIAlertController(title: "Saved", message: "Temperature added to history successfully", preferredStyle: .alert)
            errorMessage.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(errorMessage, animated: true, completion: nil)
        }
        else{
            let errorMessage = UIAlertController(title: "Error", message: "One or More input fields are empty", preferredStyle: .alert)
            errorMessage.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(errorMessage, animated: true, completion: nil)
        }
    }
}
