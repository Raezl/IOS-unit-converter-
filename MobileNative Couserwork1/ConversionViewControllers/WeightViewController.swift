//
//  WeightViewController.swift
//  MobileNative Couserwork1
//
//  Created by Yasiru Lakruwan on 12/04/2019.
//  Copyright © 2019 Yasiru Lakruwan. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController, KeyboardDelegate {
    
    //Conversion class reference
    let conversionObj = Conversions()
    
    //UITextField Outlets
    @IBOutlet weak var txtKg: UITextField!
    @IBOutlet weak var txtGrams: UITextField!
    @IBOutlet weak var txtOunces: UITextField!
    @IBOutlet weak var txtStone: UITextField!
    @IBOutlet weak var txtPounds: UITextField!
    
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
            let errorMessage = UIAlertController(title: "Error", message: "Cannot insert decimals.", preferredStyle: .alert)
            errorMessage.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(errorMessage, animated: true, completion: nil)
        }else if view.selectedTextField.text != ""{
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
    
    //UITextField actions
    @IBAction func editKg(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtGrams.text = String(conversionObj.kgToGrams(Float(value)!))
                txtOunces.text = String(conversionObj.kgToOunces(Float(value)!))
                txtStone.text = String(conversionObj.kgToStone(Float(value)!))
                txtPounds.text = String(conversionObj.kgToPounds(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    
    @IBAction func editGrams(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtKg.text = String(conversionObj.gramsToKg(Float(value)!))
                txtOunces.text = String(conversionObj.gramsToOunces(Float(value)!))
                txtStone.text = String(conversionObj.gramsToStone(Float(value)!))
                txtPounds.text = String(conversionObj.gramsToPounds(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editOunces(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtKg.text = String(conversionObj.ouncesToKg(Float(value)!))
                txtGrams.text = String(conversionObj.ouncesToGrams(Float(value)!))
                txtStone.text = String(conversionObj.ouncesToStone(Float(value)!))
                txtPounds.text = String(conversionObj.ouncesToPounds(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editStone(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtKg.text = String(conversionObj.stoneToKg(Float(value)!))
                txtGrams.text = String(conversionObj.stoneToGrams(Float(value)!))
                txtOunces.text = String(conversionObj.stoneToOunces(Float(value)!))
                txtPounds.text = String(conversionObj.stoneToPounds(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editPounds(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtKg.text = String(conversionObj.poundsToKg(Float(value)!))
                txtGrams.text = String(conversionObj.poundsToGrams(Float(value)!))
                txtOunces.text = String(conversionObj.poundsToOunces(Float(value)!))
                txtStone.text = String(conversionObj.poundsToStone(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    
    
    
    @IBAction func btnSave(_ sender: Any) {
        let saveObj = Saves()
        if txtKg.text != "" && txtGrams.text != "" && txtOunces.text != "" && txtStone.text != "" && txtPounds.text != ""{
            let saveString = "Kg: \(txtKg.text!) = Grams: \(txtGrams.text!) = Ounces: \(txtOunces.text!) = Stone: \(txtStone.text!) = Pounds: \(txtPounds.text!)"
            saveObj.setSave(key: "Weight", saveString: saveString)
            
            let errorMessage = UIAlertController(title: "Saved", message: "Weight added to history successfully", preferredStyle: .alert)
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
