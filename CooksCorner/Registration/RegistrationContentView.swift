//
//  RegistrationContentView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 12.03.2024.
//

import UIKit

protocol RegistrationContentViewDelegate: AnyObject {
    func signInButtonTapped()
}

class RegistrationContentView: UIView {
    
    weak var delegate: RegistrationContentViewDelegate?
    
    private let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .mainOrangeColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var welcomeTitle: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.numberOfLines = 0
        label.textColor = .white
        let attributedString = NSMutableAttributedString(string: "Sign up for delicious \nDiscoveries")
        
        if let range = attributedString.string.range(of: " ", options: .backwards) {
            let nsRange = NSRange(range, in: attributedString.string)
            
            attributedString.addAttribute(.font, value: UIFont(name: "Poppins-Light", size: 25)!, range: NSRange(location: 0, length: nsRange.lowerBound))
            attributedString.addAttribute(.font, value: UIFont(name: "Poppins-SemiBold", size: 25)!, range: NSRange(location: nsRange.upperBound, length: attributedString.length - nsRange.upperBound))
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText = attributedString
        
        return label
    }()
    
    private let nameTextFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textAlignment = .left
        label.textColor = .mainOrangeColor
        label.font = UIFont(name: "Poppins-Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(image: UIImage(named: "EmailLogoTextField")!)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    private let mailTextFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Gmail"
        label.textAlignment = .left
        label.textColor = .mainOrangeColor
        label.font = UIFont(name: "Poppins-Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let mailTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(image: UIImage(named: "PersonLogoTextField")!)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordTextFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textAlignment = .left
        label.textColor = .mainOrangeColor
        label.font = UIFont(name: "Poppins-Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(image: UIImage(named: "VisiblePasswordTextField")!)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordConfirmTextFieldTitle: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textAlignment = .left
        label.textColor = .mainOrangeColor
        label.font = UIFont(name: "Poppins-Medium", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let passwordConfirmTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(image: UIImage(named: "VisiblePasswordTextField")!)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.customOrangeButton()
        button.setTitle("Sign Up", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var signInTextView: UITextView = {
        let textView = UITextView()
        textView.delegate = self
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .clear
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        let fullText = "I don't have an account? Sign In Now"
        let linkText = "Sign In Now"
        
        let attributedString = NSMutableAttributedString(string: fullText)

        attributedString.addAttribute(.font, value: UIFont(name: "Poppins-Medium", size: 12)!, range: NSRange(fullText.startIndex..<fullText.endIndex, in: fullText))

        if let linkRange = fullText.range(of: linkText) {
            attributedString.addAttribute(.link, value: "signUp", range: NSRange(linkRange, in: fullText))
            attributedString.addAttribute(.font, value: UIFont(name: "Poppins-Medium", size: 12)!, range: NSRange(linkRange, in: fullText))
            attributedString.addAttribute(.foregroundColor, value: UIColor.mainOrangeColor, range: NSRange(linkRange, in: fullText))
        }
        
        
        textView.attributedText = attributedString
        
        return textView
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
        addSubview(orangeView)
        orangeView.addSubview(welcomeTitle)
        addSubview(nameTextField)
        addSubview(nameTextFieldTitle)
        addSubview(mailTextFieldTitle)
        addSubview(mailTextField)
        addSubview(passwordTextField)
        addSubview(passwordTextFieldTitle)
        addSubview(passwordConfirmTextField)
        addSubview(passwordConfirmTextFieldTitle)
        addSubview(signUpButton)
        addSubview(signInTextView)
        
        NSLayoutConstraint.activate([
            orangeView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            orangeView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            orangeView.topAnchor.constraint(equalTo: self.topAnchor),
            orangeView.heightAnchor.constraint(equalToConstant: 223),
            
            welcomeTitle.leadingAnchor.constraint(equalTo: orangeView.leadingAnchor, constant: 20),
            welcomeTitle.trailingAnchor.constraint(equalTo: orangeView.trailingAnchor, constant: -20),
            welcomeTitle.bottomAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: -68),
            
            nameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            nameTextField.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 49),
            nameTextField.heightAnchor.constraint(equalToConstant: 44),
            
            nameTextFieldTitle.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            nameTextFieldTitle.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            nameTextFieldTitle.bottomAnchor.constraint(equalTo: nameTextField.topAnchor, constant: -5),
            
            mailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            mailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            mailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 45),
            mailTextField.heightAnchor.constraint(equalToConstant: 44),
            
            mailTextFieldTitle.leadingAnchor.constraint(equalTo: mailTextField.leadingAnchor),
            mailTextFieldTitle.trailingAnchor.constraint(equalTo: mailTextField.trailingAnchor),
            mailTextFieldTitle.bottomAnchor.constraint(equalTo: mailTextField.topAnchor, constant: -5),
            
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            passwordTextField.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 45),
            passwordTextField.heightAnchor.constraint(equalToConstant: 44),
            
            passwordTextFieldTitle.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            passwordTextFieldTitle.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            passwordTextFieldTitle.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -5),
            
            passwordConfirmTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            passwordConfirmTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            passwordConfirmTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 45),
            passwordConfirmTextField.heightAnchor.constraint(equalToConstant: 44),
            
            passwordConfirmTextFieldTitle.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            passwordConfirmTextFieldTitle.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            passwordConfirmTextFieldTitle.bottomAnchor.constraint(equalTo: passwordConfirmTextField.topAnchor, constant: -5),
            
            signUpButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            signUpButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            signUpButton.topAnchor.constraint(equalTo: passwordConfirmTextField.bottomAnchor, constant: 24),
            signUpButton.heightAnchor.constraint(equalToConstant: 44),
            
            signInTextView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            signInTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -65),
            signInTextView.heightAnchor.constraint(equalToConstant: 44),
            
            
            
            
        ])
    }
}


extension RegistrationContentView: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
        if URL.absoluteString == "signUp" {
            delegate?.signInButtonTapped()
        }
        return true
        
    }
}
