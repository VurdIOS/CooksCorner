//
//  SearchViewController.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import UIKit

class SearchViewController: UIViewController {
    
    let contentView = SearchContentView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonsTarget()
    }
    
    override func loadView() {
        view = contentView
    }
    
    private func setupButtonsTarget() {
        contentView.addRecipeButton.addTarget(self, action: #selector(addRecipeButtonTapped), for: .touchUpInside)
    }
    
    @objc private func addRecipeButtonTapped() {
        let viewController = CreateRecipeViewController()
        viewController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: true)
    }
    


}
