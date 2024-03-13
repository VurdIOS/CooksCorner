//
//  RecipeViewModel.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 13.03.2024.
//

import Foundation

protocol RecipeViewModelProtocol {
    var recipeTitle: String { get }
    var recipeAuthor: String { get }
    var recipeLikeAmount: Int { get }
    var recipeSaveAmount: Int { get }
}

class RecipeViewModel: RecipeViewModelProtocol {
    
    private let recipe: Recipe
    
    var recipeTitle: String {
        recipe.title
    }
    
    var recipeAuthor: String {
        recipe.author
    }
    
    var recipeLikeAmount: Int {
        recipe.likeAmount
    }
    
    var recipeSaveAmount: Int {
        recipe.saveAmount
    }
    
    required init(recipe: Recipe) {
        self.recipe = recipe
    }
}
