//
//  RecipeDetailViewController.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 19.03.2024.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    let contentView = RecipeDetailContentView()
    let viewModel: RecipeDetailViewModelProtocol

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.updateView(recipe: viewModel.recipe)

    }
    
    override func loadView() {
        view = contentView
    }
    
    init(viewModel: RecipeDetailViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
