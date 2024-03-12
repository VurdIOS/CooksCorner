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

        
    }
    
}

extension SigningViewController: SigningContentViewDelegate {
    func signUpButtonTapped() {
        let viewController = RegistrationViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}

