//
//  SpeedViewController.swift
//  MobileNative Couserwork1
//
//  Created by Yasiru Lakruwan on 12/04/2019.
//  Copyright © 2019 Yasiru Lakruwan. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController, KeyboardDelegate {

    @IBOutlet weak var txtMetresPerSec: UITextField!
    @IBOutlet weak var txtKMPerHour: UITextField!
    @IBOutlet weak var txtMilesPerHour: UITextField!
    @IBOutlet weak var txtNauticalMilesPerHour: UITextField!
    
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
        else if view.selectedTextField.text!.count == 0{
            
            //delete all text in all text fields
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
    
    @IBAction func editMetrePerSec(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtKMPerHour.text = String(conversionObj.metrePerSecondToKmPerHour(Float(value)!))
                txtMilesPerHour.text = String(conversionObj.metrePerSecondToMilesPerHour(Float(value)!))
                txtNauticalMilesPerHour.text = String(conversionObj.metrePerSecondToNauticalMilesPerHour(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editKMPerHour(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtMetresPerSec.text = String(conversionObj.kmPerHourToMetrePerSecond(Float(value)!))
                txtMilesPerHour.text = String(conversionObj.kmPerHourToMilesPerHour(Float(value)!))
                txtNauticalMilesPerHour.text = String(conversionObj.kmPerHourToNauticalMilesPerHour(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editMilesPerHour(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtKMPerHour.text = String(conversionObj.milesPerHourToKmPerHour(Float(value)!))
                txtMetresPerSec.text = String(conversionObj.milesPerHourToMetrePerSecond(Float(value)!))
                txtNauticalMilesPerHour.text = String(conversionObj.milesPerHourToNauticalMilesPerHour(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func editNauticalMilesPerHour(_ sender: Any) {
        if view.selectedTextField.text! != ""{
            if let value = view.selectedTextField.text{
                txtKMPerHour.text = String(conversionObj.nauticalMilesPerHourToKmPerHour(Float(value)!))
                txtMilesPerHour.text = String(conversionObj.nauticalMilesPerHourToMilesPerHour(Float(value)!))
                txtMetresPerSec.text = String(conversionObj.nauticalMilesPerHourToMetrePerSecond(Float(value)!))
            }
        }else{
            clearTextFields()
        }
    }
    @IBAction func btnSave(_ sender: Any) {
        let saveObj = Saves()
        if txtKMPerHour.text != "" && txtMetresPerSec.text != "" && txtNauticalMilesPerHour.text != "" && txtMilesPerHour.text != ""{
            let saveString = "KMPerHour: \(txtKMPerHour.text!) = MetresPerSec: \(txtMetresPerSec.text!) = NauticalMilesPerHour: \(txtNauticalMilesPerHour.text!) = MilesPerHour: \(txtMilesPerHour.text!)"
            saveObj.setSave(key: "Speed", saveString: saveString)
            
            let errorMessage = UIAlertController(title: "Saved", message: "Speeds added to history successfully", preferredStyle: .alert)
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
