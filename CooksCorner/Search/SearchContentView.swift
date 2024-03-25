//
//  ProfileContentView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import UIKit

class SearchContentView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "What to eat \n today?"
        label.font = UIFont(name: "Poppins-Medium", size: 22)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .black
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let backGroundSegmentControlView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightOrangeColor
        view.layer.cornerRadius = 26
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let chiefsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Chiefs", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 18
        return button
    }()
    
    let recipesButton: UIButton = {
        let button = UIButton()
        button.setTitle("Recipes", for: .normal)
        button.backgroundColor = .mainOrangeColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 18
        return button
    }()
    
    let addRecipeButton: UIButton = {
        let button = UIButton()
        button.setTitle(" Add your recipe", for: .normal)
        button.setImage(UIImage(named: "PlusButtonInverted"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 22
        button.backgroundColor = .mainOrangeColor
        return button
    }()
    
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupConstraints()
    }
    
    private func setupConstraints() {
        addSubview(titleLabel)
        addSubview(backGroundSegmentControlView)
        backGroundSegmentControlView.addSubview(chiefsButton)
        backGroundSegmentControlView.addSubview(recipesButton)
        addSubview(addRecipeButton)
        
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 61),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            titleLabel.heightAnchor.constraint(equalToConstant: 65),
            
            backGroundSegmentControlView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24),
            backGroundSegmentControlView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            backGroundSegmentControlView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            backGroundSegmentControlView.heightAnchor.constraint(equalToConstant: 52),
            
            chiefsButton.centerYAnchor.constraint(equalTo: backGroundSegmentControlView.centerYAnchor),
            chiefsButton.leadingAnchor.constraint(equalTo: backGroundSegmentControlView.leadingAnchor, constant: 9),
            chiefsButton.widthAnchor.constraint(equalToConstant: 160),
            chiefsButton.heightAnchor.constraint(equalToConstant: 36),
            
            
            recipesButton.centerYAnchor.constraint(equalTo: backGroundSegmentControlView.centerYAnchor),
            recipesButton.trailingAnchor.constraint(equalTo: backGroundSegmentControlView.trailingAnchor, constant: -9),
            recipesButton.widthAnchor.constraint(equalToConstant: 160),
            recipesButton.heightAnchor.constraint(equalToConstant: 36),
            
            addRecipeButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -85),
            addRecipeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            addRecipeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            addRecipeButton.heightAnchor.constraint(equalToConstant: 44),
            
            
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   

}
