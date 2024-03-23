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
        textField.customTextField()
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
        textField.customTextField()
        textField.placeholder = "Description"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let ingredientFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Add a ingredient"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        return label
    }()
    
    let ingredientView: UIView = {
       let view = IngridientTextFieldsView()
        
        return view
    }()
    
    let addIngridientButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "PlusButton"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let difficultyFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Difficulty"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let easyLevelButton: UIButton = {
       let button = UIButton()
        button.setTitle("Easy", for: .normal)
        button.backgroundColor = .textFieldBackGround
        button.layer.cornerRadius = 22
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let MediumLevelButton: UIButton = {
       let button = UIButton()
        button.setTitle("Medium", for: .normal)
        button.backgroundColor = .textFieldBackGround
        button.layer.cornerRadius = 22
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let HardLevelButton: UIButton = {
       let button = UIButton()
        button.setTitle("Hard", for: .normal)
        button.backgroundColor = .textFieldBackGround
        button.layer.cornerRadius = 22
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let categoryFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Category of meal"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let categorydButton: UIButton = {
        let label = UIButton()
        label.setTitle("  Breakfast", for: .normal)
//        label.font = UIFont(name: "Poppins-Medium", size: 12)
        label.setTitleColor(.black, for: .normal)
        label.contentHorizontalAlignment = .left
        label.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timeFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Preparation time"
        label.font = UIFont(name: "Poppins-Medium", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timeTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField()
        textField.placeholder = "How much time does it need?(minutes)"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let createRecipeButton: UIButton = {
        let label = UIButton()
        label.setTitle("Create a recipe", for: .normal)
//        label.font = UIFont(name: "Poppins-Medium", size: 12)
        label.setTitleColor(.white, for: .normal)
        label.backgroundColor = .gray
        label.layer.cornerRadius = 22
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let VStack: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        stackView.spacing = 7
        
        return stackView
    }()
    
    lazy var scrollView: UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
        
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
        addSubview(scrollView)
        scrollView.addSubview(photoFieldTitle)
        scrollView.addSubview(backgroundView)
        backgroundView.addSubview(recipePhotoImageView)
        backgroundView.addSubview(addPhotoButton)
        backgroundView.addSubview(changePhotoButton)
        scrollView.addSubview(nameFieldTitle)
        scrollView.addSubview(nameTextField)
        scrollView.addSubview(descriptionFieldTitle)
        scrollView.addSubview(descriptionTextField)
        scrollView.addSubview(ingredientFieldTitle)
        scrollView.addSubview(VStack)
//        VStack.addArrangedSubview(ingredientTextField)
        VStack.addArrangedSubview(ingredientView)
        scrollView.addSubview(difficultyFieldTitle)
        scrollView.addSubview(addIngridientButton)
        scrollView.addSubview(easyLevelButton)
        scrollView.addSubview(MediumLevelButton)
        scrollView.addSubview(HardLevelButton)
        scrollView.addSubview(categoryFieldTitle)
        scrollView.addSubview(categorydButton)
        scrollView.addSubview(timeFieldTitle)
        scrollView.addSubview(timeTextField)
        scrollView.addSubview(createRecipeButton)
        setupImageView()
        setupButtons()
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            photoFieldTitle.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            photoFieldTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            photoFieldTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            backgroundView.topAnchor.constraint(equalTo: photoFieldTitle.bottomAnchor, constant: 4),
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
            descriptionTextField.heightAnchor.constraint(equalToConstant: 44),
            
            ingredientFieldTitle.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 16),
            ingredientFieldTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            ingredientFieldTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            VStack.topAnchor.constraint(equalTo: ingredientFieldTitle.bottomAnchor, constant: 4),
            VStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            VStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 80),
            ingredientView.heightAnchor.constraint(equalToConstant: 44),
            
            addIngridientButton.topAnchor.constraint(equalTo: VStack.topAnchor),
            addIngridientButton.leadingAnchor.constraint(equalTo: self.trailingAnchor, constant: -55),
            addIngridientButton.widthAnchor.constraint(equalToConstant: 44),
            addIngridientButton.heightAnchor.constraint(equalToConstant: 44),
            
            difficultyFieldTitle.topAnchor.constraint(equalTo: VStack.bottomAnchor, constant: 16),
            difficultyFieldTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            difficultyFieldTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            easyLevelButton.topAnchor.constraint(equalTo: difficultyFieldTitle.bottomAnchor, constant: 4),
            easyLevelButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            easyLevelButton.heightAnchor.constraint(equalToConstant: 37),
            easyLevelButton.widthAnchor.constraint(equalToConstant: 70),
            
            MediumLevelButton.topAnchor.constraint(equalTo: difficultyFieldTitle.bottomAnchor, constant: 4),
            MediumLevelButton.leadingAnchor.constraint(equalTo: easyLevelButton.trailingAnchor, constant: 16),
            MediumLevelButton.heightAnchor.constraint(equalToConstant: 37),
            MediumLevelButton.widthAnchor.constraint(equalToConstant: 90),
            
            HardLevelButton.topAnchor.constraint(equalTo: difficultyFieldTitle.bottomAnchor, constant: 4),
            HardLevelButton.leadingAnchor.constraint(equalTo: MediumLevelButton.trailingAnchor, constant: 16),
            HardLevelButton.heightAnchor.constraint(equalToConstant: 37),
            HardLevelButton.widthAnchor.constraint(equalToConstant: 70),
            
            categoryFieldTitle.topAnchor.constraint(equalTo: easyLevelButton.bottomAnchor, constant: 16),
            categoryFieldTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            categoryFieldTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            categorydButton.topAnchor.constraint(equalTo: categoryFieldTitle.bottomAnchor, constant: 4),
            categorydButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            categorydButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            categorydButton.heightAnchor.constraint(equalToConstant: 44),
            
            timeFieldTitle.topAnchor.constraint(equalTo: categorydButton.bottomAnchor, constant: 16),
            timeFieldTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            timeFieldTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            timeTextField.topAnchor.constraint(equalTo: timeFieldTitle.bottomAnchor, constant: 4),
            timeTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            timeTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            timeTextField.heightAnchor.constraint(equalToConstant: 44),
            
            createRecipeButton.topAnchor.constraint(equalTo: timeTextField.bottomAnchor, constant: 81),
            createRecipeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            createRecipeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            createRecipeButton.heightAnchor.constraint(equalToConstant: 44),
            
        ])
    }
    
    func setupScrollViewHeight() {
        var totalHeight: CGFloat = 0
        for subview in scrollView.subviews {
            totalHeight += subview.bounds.size.height
        }
        scrollView.contentSize.height = totalHeight
        scrollView.layoutIfNeeded()
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
    
    let actionClosure = { (action: UIAction) in
         print(action.title)
    }
    
    func setupButtons() {
        let massive = ["Breakfast", "Dinner", "Launch", "Evening"]
        var menuChildren: [UIMenuElement] = []
        for fruit in massive {
            menuChildren.append(UIAction(title: fruit, handler: actionClosure))
        }

        categorydButton.menu = UIMenu(options: .displayInline, children: menuChildren)

        categorydButton.showsMenuAsPrimaryAction = true
        categorydButton.changesSelectionAsPrimaryAction = true
    }

    
}
