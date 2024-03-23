//
//  ViewController.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 11.03.2024.
//

import UIKit

class SigningViewController: UIViewController {
    
    let contentView = SigningContentView()
    
    override func loadView() {
        view = contentView
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
        setupButtonsTarget()

        
    }
    
    private func setupButtonsTarget() {
        contentView.signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
    }
    @objc private func signInButtonTapped() {
        let viewController = MainTabBarViewController()
        viewController.navigationItem.setHidesBackButton(true, animated: false)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

extension SigningViewController: SigningContentViewDelegate {
    func signUpButtonTapped() {
        let viewController = RegistrationViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}

