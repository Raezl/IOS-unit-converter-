//
//  WeightHistoryViewController.swift
//  MobileNative Couserwork1
//
//  Created by Yasiru Lakruwan on 12/04/2019.
//  Copyright © 2019 Yasiru Lakruwan. All rights reserved.
//

import UIKit

class WeightHistoryViewController: UIViewController {

    @IBOutlet weak var txtHistory: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        let saveObj = Saves()
        let history = saveObj.getSave(key: "Weight")
        txtHistory.text = ""
        if history == nil {
            txtHistory.text = "No History Available"
        } else {
            
            for count in 0...(history!.count-1){
                txtHistory.insertText(String(String(count+1) + ") " + history![count]) + "\n\n")
            }
        }
    }
    
}
