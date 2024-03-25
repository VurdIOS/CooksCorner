//
//  UIView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 25.03.2024.
//

import UIKit

extension UIView {
    func addBottomBorderWithColor() {
        let border = CALayer()
        border.backgroundColor = UIColor.black.cgColor
        border.frame = CGRectMake(0, self.frame.size.height - 1, self.frame.size.width, 1)
        self.layer.addSublayer(border)
    }
}
