//
//  ProfileViewModel.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import Foundation

protocol ProfileViewModelProtocol: AnyObject {
    func getRecipeCount() -> Int
    func getRecipe(index: Int) -> Recipe
    func getDataForDetailViewModel(recipe: Recipe) -> RecipeDetailNEWViewModelProtocol
}

class ProfileViewModel: ProfileViewModelProtocol {
    
    private var recipeData: [Recipe] = Recipe.getMokeData()
    
    func getRecipeCount() -> Int {
        recipeData.count
    }
    
    func getRecipe(index: Int) -> Recipe {
        recipeData[index]
    }
    
    func getDataForDetailViewModel(recipe: Recipe) -> RecipeDetailNEWViewModelProtocol {
        RecipeDetailNEWViewModel(recipe: recipe)
    }
}
