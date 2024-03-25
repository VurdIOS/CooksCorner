//
//  RecipeDetailViewModel.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 19.03.2024.
//

import UIKit
#warning("Убрать uikit")
protocol RecipeDetailViewModelProtocol {
    var recipe: Recipe { get }

}

class RecipeDetailViewModel: RecipeDetailViewModelProtocol {
    
    
    let recipe: Recipe
    
    init(recipe: Recipe) {
        self.recipe = recipe
    }
}
