//
//  TextField.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 12.03.2024.
//

import UIKit

extension UITextField {
    func customTextField() {
        self.backgroundColor = .textFieldBackGround
        self.layer.cornerRadius = 22
        self.font = UIFont(name: "Poppins-Regular", size: 14)!
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 44))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
