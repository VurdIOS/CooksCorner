//
//  IngridientTextFieldsView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import UIKit
import SwiftyMenu



class IngridientTextFieldsView: UIView {
    
    private let dropDownCodeOptionsDataSource = [
        MealSize(id: 1, name: "kg"),
        MealSize(id: 2, name: "ml"),
        MealSize(id: 3, name: "pd"),
        MealSize(id: 4, name: "ft"),
    ]
    
    let ingredientTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField()
        textField.placeholder = "Ingredient name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
 
    let typeOfWeightTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField()
        textField.text = "kg"
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(ingredientTextField)
        addSubview(typeOfWeightTextField)
        
        NSLayoutConstraint.activate([
            ingredientTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            ingredientTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            ingredientTextField.heightAnchor.constraint(equalToConstant: 44),
            ingredientTextField.widthAnchor.constraint(equalToConstant: 174),
            
            typeOfWeightTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            typeOfWeightTextField.leadingAnchor.constraint(equalTo: ingredientTextField.trailingAnchor, constant: 10),
            typeOfWeightTextField.heightAnchor.constraint(equalToConstant: 44),
            typeOfWeightTextField.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
}
