//
//  Extentions.swift
//  MobileNative Couserwork1
//
//  Created by Yasiru Lakruwan on 12/04/2019.
//  Copyright © 2019 Yasiru Lakruwan. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    var textFieldsInView: [UITextField] {
        return subviews
            .filter ({ !($0 is UITextField) })
            .reduce (( subviews.compactMap { $0 as? UITextField }), { summ, current in
                return summ + current.textFieldsInView
            })
    }
    var selectedTextField: UITextField! {
        return textFieldsInView.filter { $0.isFirstResponder }.first
    }
    
    var textFieldList:[UITextField]{
        return textFieldsInView
    }
}

extension Float {
    //rounds to 4 decimal places
    func roundTo() -> Float {
        let divisor = pow(10.0, Float(4))
        return (self * divisor).rounded() / divisor
    }
}
