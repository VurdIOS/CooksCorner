//
//  SigningContentView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 12.03.2024.
//

import UIKit

class SigningContentView: UIView {
    
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
        let attributedString = NSMutableAttributedString(string: "Welcome Back \nTo CooksCorner")
        
        if let range = attributedString.string.range(of: " ", options: .backwards) {
            let nsRange = NSRange(range, in: attributedString.string)
            
            // Применение разных стилей шрифта к разным частям текста
            attributedString.addAttribute(.font, value: UIFont(name: "Poppins-Light", size: 25)!, range: NSRange(location: 0, length: nsRange.lowerBound))
            attributedString.addAttribute(.font, value: UIFont(name: "Poppins-SemiBold", size: 25)!, range: NSRange(location: nsRange.upperBound, length: attributedString.length - nsRange.upperBound))
        }
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText = attributedString
        
        return label
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
        textField.customTextField()
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
        textField.customTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let signInButton: UIButton = {
        let button = UIButton()
        button.customOrangeButton()
        button.setTitle("Sign In", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var signUpTextView: UITextView = {
        let textView = UITextView()
        textView.delegate = self
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .clear
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        let fullText = "I don't have an account? Sign Up Now"
        let linkText = "Sign Up Now"
        
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
        addSubview(mailTextField)
        addSubview(mailTextFieldTitle)
        addSubview(passwordTextFieldTitle)
        addSubview(passwordTextField)
        addSubview(signInButton)
        addSubview(signUpTextView)
        
        NSLayoutConstraint.activate([
            orangeView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            orangeView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            orangeView.topAnchor.constraint(equalTo: self.topAnchor),
            orangeView.heightAnchor.constraint(equalToConstant: 223),
            
            welcomeTitle.leadingAnchor.constraint(equalTo: orangeView.leadingAnchor, constant: 20),
            welcomeTitle.trailingAnchor.constraint(equalTo: orangeView.trailingAnchor, constant: -20),
            welcomeTitle.bottomAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: -68),
            
            mailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            mailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            mailTextField.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: 65),
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
            
            signInButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            signInButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 24),
            signInButton.heightAnchor.constraint(equalToConstant: 44),
            
            signUpTextView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            signUpTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -65),
            signUpTextView.heightAnchor.constraint(equalToConstant: 44),
            
            
            
            
            
            
        ])
    }
}


extension SigningContentView: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
        if URL.absoluteString == "signUp" {
            print("Sign up was tapped")
            return false
        }
        return true
        
    }
}
