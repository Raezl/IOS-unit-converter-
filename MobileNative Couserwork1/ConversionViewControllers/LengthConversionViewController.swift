//
//  LengthConversionViewController.swift
//  MobileNative Couserwork1
//
//  Created by Yasiru Lakruwan on 11/04/2019.
//  Copyright © 2019 Yasiru Lakruwan. All rights reserved.
//

import UIKit


class LengthConversionViewController: UIViewController, KeyboardDelegate {
    

    @IBOutlet weak var txtMetre: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    @IBOutlet weak var txtCM: UITextField!
    @IBOutlet weak var txtMM: UITextField!
    @IBOutlet weak var txtYards: UITextField!
    @IBOutlet weak var txtInches: UITextField!
    
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
    
    @IBAction func editMetre(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtMile.text = String(conversionObj.metresToMiles(Float(value)!))
                txtCM.text = String(conversionObj.metresToCm(Float(value)!))
                txtMM.text = String(conversionObj.metresToMm(Float(value)!))
                txtYards.text = String(conversionObj.metresToYards(Float(value)!))
                txtInches.text = String(conversionObj.metresToInches(Float(value)!))

            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editMile(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtMetre.text = String(conversionObj.milesToMetres(Float(value)!))
                txtCM.text = String(conversionObj.milesToCm(Float(value)!))
                txtMM.text = String(conversionObj.milesToMm(Float(value)!))
                txtYards.text = String(conversionObj.milesToYards(Float(value)!))
                txtInches.text = String(conversionObj.milesToInches(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editCM(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtMile.text = String(conversionObj.cmToMiles(Float(value)!))
                txtMetre.text = String(conversionObj.cmToMetres(Float(value)!))
                txtMM.text = String(conversionObj.cmToMm(Float(value)!))
                txtYards.text = String(conversionObj.cmToYards(Float(value)!))
                txtInches.text = String(conversionObj.cmToInches(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editMM(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtMile.text = String(conversionObj.mmToMiles(Float(value)!))
                txtCM.text = String(conversionObj.mmToCm(Float(value)!))
                txtMetre.text = String(conversionObj.mmToMetres(Float(value)!))
                txtYards.text = String(conversionObj.mmToYards(Float(value)!))
                txtInches.text = String(conversionObj.mmToInches(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editYards(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtMile.text = String(conversionObj.yardsToMiles(Float(value)!))
                txtCM.text = String(conversionObj.yardsToCm(Float(value)!))
                txtMM.text = String(conversionObj.yardsToMm(Float(value)!))
                txtMetre.text = String(conversionObj.yardsToMetres(Float(value)!))
                txtInches.text = String(conversionObj.yardsToInches(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editInches(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtMile.text = String(conversionObj.inchesToMiles(Float(value)!))
                txtCM.text = String(conversionObj.inchesToCm(Float(value)!))
                txtMM.text = String(conversionObj.inchesToMm(Float(value)!))
                txtYards.text = String(conversionObj.inchesToYards(Float(value)!))
                txtMetre.text = String(conversionObj.inchesToMetres(Float(value)!))
                
            }
        }else{
            clearTextFields()
        }
    }
    
    @IBAction func btnSave(_ sender: Any) {
        let saveObj = Saves()
        if txtMetre.text != "" && txtInches.text != "" && txtYards.text != "" && txtMM.text != "" && txtCM.text != "" && txtMile.text != ""{
            let saveString = "Metre: \(txtMetre.text!) = Inches: \(txtInches.text!) = Yards: \(txtYards.text!) = MM: \(txtMM.text!) = CM: \(txtCM.text!) = Mile: \(txtMile.text!)"
            saveObj.setSave(key: "Length", saveString: saveString)
            
            let errorMessage = UIAlertController(title: "Saved", message: "Lenght added to history successfully", preferredStyle: .alert)
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
