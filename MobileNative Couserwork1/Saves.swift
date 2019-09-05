//
//  history.swift
//  MobileNative Couserwork1
//
//  Created by Yasiru Lakruwan on 12/04/2019.
//  Copyright © 2019 Yasiru Lakruwan. All rights reserved.
//

import Foundation
class Saves {
    let userDefault = UserDefaults.standard
    
    func setSave(key: String, saveString: String){
        var save = userDefault.value(forKey: key) as? [String] ?? nil
        
        if save == nil{
            var list = [String]()
            list.append(saveString)
            userDefault.set(list, forKey: key)
        }
        else if save!.count > 0{
            if save!.count >= 5{
                save!.remove(at: 0)
            }
            save!.append(saveString)
            userDefault.set(save, forKey: key)
        }
    }
    
    func getSave(key: String) -> [String]?{
        return userDefault.value(forKey: key) as? [String] ?? nil
    }
}
