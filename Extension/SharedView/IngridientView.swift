//
//  InggridientView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 25.03.2024.
//

import UIKit

class IngridientView: UIView {
    
    private let mainText: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        return label
    }()
    
    
    private let addText: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        return label
    }()
    
    init(configure: Ingredient) {
        super.init(frame: .zero)
        self.backgroundColor = .white
        self.mainText.text = configure.name
        self.addText.text = "\(configure.weightType) \(configure.weight!)"
        self.layer.borderWidth = 10
        setupViews()
        setupLayout()
        
    }
    

    
    // MARK: - Setup
    private func setupViews() {
        addSubview(mainText)
        addSubview(addText)
 
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            mainText.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            mainText.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainText.widthAnchor.constraint(equalToConstant: 100),
            
            
            addText.centerYAnchor.constraint(equalTo: mainText.centerYAnchor),
            addText.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            addText.widthAnchor.constraint(equalToConstant: 100),
            
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
