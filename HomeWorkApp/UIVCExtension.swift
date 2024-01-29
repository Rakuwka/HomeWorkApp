//
//  UIVCExtension.swift
//  HomeWorkApp
//
//  Created by Rakshanda Alaskarova on 27.01.24.
//

import UIKit

extension UIViewController {
    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    func addTapToHideKB() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        self.view.addGestureRecognizer(tap)
    }
    
}
