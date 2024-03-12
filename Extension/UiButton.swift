//
//  UiButton.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 12.03.2024.
//

import UIKit

extension UIButton {
    func customOrangeButton() {
        self.backgroundColor = .mainOrangeColor
        self.layer.cornerRadius = 22
        self.tintColor = .white
        self.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 14)
    }
}
