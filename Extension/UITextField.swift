//
//  TextField.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 12.03.2024.
//

import UIKit

extension UITextField {
    func customTextField(image: UIImage?) {
        let rightViewSize = CGRect(x: 0, y: 0, width: 18, height: 18)
        if let image = image {
            let rightView = TextFieldRightViewButton(frame: rightViewSize, image: image)
        }
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 44))
        
        self.backgroundColor = .textFieldBackGround
        self.layer.cornerRadius = 22
        self.font = UIFont(name: "Poppins-Regular", size: 14)!
        self.leftView = paddingView
        self.leftViewMode = .always
        self.rightView = rightView
        self.rightViewMode = .always
    }
}
