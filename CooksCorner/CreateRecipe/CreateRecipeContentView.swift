//
//  CreateRecipeContentView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 20.03.2024.
//

import UIKit

class CreateRecipeContentView: UIView {
    let photoFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Add a recipe Photo"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let addPhotoButton : UIButton = {
        let button = UIButton()
        button.setTitle("Upload a final photo of your dish", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        button.contentHorizontalAlignment = .left
        //        button.addTarget(self, action: #selector(addPhotoButtonTapped), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var recipePhotoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.image = UIImage(named: "PhotoIcon")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
        
    }()
    
    let backgroundView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .textFieldBackGround
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
        
    }()
    let changePhotoButton : UIButton = {
        let button = UIButton()
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlineAttributedString = NSAttributedString(string: "Change photo", attributes: underlineAttribute)
        button.titleLabel?.attributedText = underlineAttributedString
        button.setTitle("Change photo", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        button.contentHorizontalAlignment = .left
        button.isHidden = true
        //        button.addTarget(self, action: #selector(addPhotoButtonTapped), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let nameFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Name your recipe"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(image: nil)
        textField.placeholder = "Recipe's name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let descriptionFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Add a description"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let descriptionTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(image: nil)
        textField.placeholder = "Description"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let ingredientFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Add a ingredient"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        return label
    }()
    
    let difficultyFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Difficulty"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        return label
    }()
    
    let categoryFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Category of meal"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        return label
    }()
    
    let timeFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Preparation time"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        return label
    }()
    
    
    
    private var imageViewHeightConstraint = NSLayoutConstraint()
    private var imageViewWidthConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(photoFieldTitle)
        addSubview(backgroundView)
        backgroundView.addSubview(recipePhotoImageView)
        backgroundView.addSubview(addPhotoButton)
        backgroundView.addSubview(changePhotoButton)
        addSubview(nameFieldTitle)
        addSubview(nameTextField)
        addSubview(descriptionFieldTitle)
        addSubview(descriptionTextField)
        setupImageView()
        
        NSLayoutConstraint.activate([
            
            photoFieldTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            photoFieldTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            photoFieldTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            backgroundView.topAnchor.constraint(equalTo: self.photoFieldTitle.bottomAnchor, constant: 4),
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            backgroundView.heightAnchor.constraint(equalToConstant: 93),
            
            addPhotoButton.leadingAnchor.constraint(equalTo: recipePhotoImageView.trailingAnchor, constant: 10),
            addPhotoButton.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: 10),
            addPhotoButton.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            
            changePhotoButton.leadingAnchor.constraint(equalTo: recipePhotoImageView.trailingAnchor, constant: 10),
            changePhotoButton.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: 10),
            changePhotoButton.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            
            nameFieldTitle.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 16),
            nameFieldTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            nameFieldTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            nameTextField.topAnchor.constraint(equalTo: nameFieldTitle.bottomAnchor, constant: 4),
            nameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 44),
            
            descriptionFieldTitle.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 16),
            descriptionFieldTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            descriptionFieldTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            descriptionTextField.topAnchor.constraint(equalTo: descriptionFieldTitle.bottomAnchor, constant: 4),
            descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            descriptionTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    private func setupImageView() {
        imageViewHeightConstraint = recipePhotoImageView.heightAnchor.constraint(equalToConstant: 50)
        imageViewWidthConstraint = recipePhotoImageView.widthAnchor.constraint(equalToConstant: 50)
        
        NSLayoutConstraint.activate([
            imageViewHeightConstraint,
            imageViewWidthConstraint,
            recipePhotoImageView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            recipePhotoImageView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
        ])
    }
    
    func updateConstraintsForImage() {
        NSLayoutConstraint.deactivate([
            imageViewHeightConstraint,
            imageViewWidthConstraint,
        ])
        
        imageViewHeightConstraint = recipePhotoImageView.heightAnchor.constraint(equalToConstant: 80)
        imageViewWidthConstraint = recipePhotoImageView.widthAnchor.constraint(equalToConstant: 80)
        
        NSLayoutConstraint.activate([
            imageViewHeightConstraint,
            imageViewWidthConstraint,
        ])
        
        UIView.animate(withDuration: 1) {
            self.layoutIfNeeded()
        }
    }
}
